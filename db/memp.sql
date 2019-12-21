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

 Date: 21/12/2019 21:07:20
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
INSERT INTO `memp_product_type` VALUES ('1', 'T恤', '[{\"item\":\"S|M|L|XL|XXL\",\"spec\":\"尺寸\"}]', '1', '2019-12-15 18:51:42', '1', '2019-12-17 00:17:23', '', '0');
INSERT INTO `memp_product_type` VALUES ('2', '裤装', '[{\"item\":\"29CM|30CM|31CM|32CM|33CM|34CM\",\"spec\":\"尺寸\"}]', '1', '2019-12-15 18:52:01', '1', '2019-12-17 00:17:09', '', '0');
INSERT INTO `memp_product_type` VALUES ('3', '手机', '[{\"item\":\"16G|32G|64G|128G|256G\",\"spec\":\"容量\"}]', '1', '2019-12-15 19:25:51', '1', '2019-12-17 00:16:32', '', '0');
INSERT INTO `memp_product_type` VALUES ('4', '箱包', '[{\"item\":\"红色|白色|军绿色|黑色|蓝色\",\"spec\":\"颜色\"},{\"item\":\"S|M|L|XL|XXL\",\"spec\":\"尺寸\"},{\"item\":\"双肩|单肩\",\"spec\":\"款式\"}]', '1', '2019-12-15 20:09:32', '1', '2019-12-16 23:44:42', '', '0');
INSERT INTO `memp_product_type` VALUES ('5', '家具', '[{\"item\":\"红木|塑料|多层实木|生态板\",\"spec\":\"颜色\"},{\"item\":\"38M|39M|40M\",\"spec\":\"高度\"},{\"item\":\"低|中|高\",\"spec\":\"环保度\"}]', '1', '2019-12-15 20:46:17', '1', '2019-12-16 23:43:35', '不想说', '0');

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
INSERT INTO `sys_area` VALUES ('10', '14', '0,431,14,10,', '新市区', 104, '650104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('100', '104', '0,1786,104,100,', '驿城区', 1702, '411702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1000', '2129', '0,2129,1000,', '景德镇市', 200, '360200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1001', '984', '0,1941,984,1001,', '融安县', 224, '450224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1002', '984', '0,1941,984,1002,', '鹿寨县', 223, '450223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1003', '980', '0,2825,980,1003,', '荥经县', 1822, '511822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1004', '984', '0,1941,984,1004,', '三江侗族自治县', 226, '450226', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1005', '984', '0,1941,984,1005,', '融水苗族自治县', 225, '450225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1006', '980', '0,2825,980,1006,', '天全县', 1825, '511825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1007', '980', '0,2825,980,1007,', '芦山县', 1826, '511826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1008', '1000', '0,2129,1000,1008,', '珠山区', 203, '360203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1009', '984', '0,1941,984,1009,', '柳城县', 222, '450222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('101', '588', '0,2825,588,101,', '广汉市', 681, '510681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1010', '980', '0,2825,980,1010,', '汉源县', 1823, '511823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1011', '980', '0,2825,980,1011,', '石棉县', 1824, '511824', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1012', '1124', '0,2138,1124,1012,', '江阴市', 281, '320281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1013', '1124', '0,2138,1124,1013,', '宜兴市', 282, '320282', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1014', '1', '0,1014,', '上海市', 0, '310000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1015', '1035', '0,3360,1035,1015,', '复兴区', 313, '830313', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1016', '988', '0,2825,988,1016,', '合江县', 522, '510522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1017', '988', '0,2825,988,1017,', '泸县', 521, '510521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1018', '1324', '0,2592,1324,1018,', '多伦县', 2531, '152531', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1019', '988', '0,2825,988,1019,', '叙永县', 524, '510524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('102', '588', '0,2825,588,102,', '绵竹市', 683, '510683', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1020', '1324', '0,2592,1324,1020,', '正蓝旗', 2530, '152530', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1021', '988', '0,2825,988,1021,', '古蔺县', 525, '510525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1022', '1035', '0,3360,1035,1022,', '大园区', 310, '830310', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1023', '1035', '0,3360,1035,1023,', '观音区', 311, '830311', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1024', '1035', '0,3360,1035,1024,', '新屋区', 312, '830312', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1025', '1035', '0,3360,1035,1025,', '芦竹区', 306, '830306', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1026', '1035', '0,3360,1035,1026,', '大溪区', 307, '830307', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1027', '1035', '0,3360,1035,1027,', '龙潭区', 308, '830308', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1028', '1000', '0,2129,1000,1028,', '浮梁县', 222, '360222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1029', '1035', '0,3360,1035,1029,', '龟山区', 309, '830309', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('103', '588', '0,2825,588,103,', '什邡市', 682, '510682', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1030', '1035', '0,3360,1035,1030,', '中坜区', 302, '830302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1031', '1035', '0,3360,1035,1031,', '平镇区', 303, '830303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1032', '1035', '0,3360,1035,1032,', '八德区', 304, '830304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1033', '1035', '0,3360,1035,1033,', '杨梅区', 305, '830305', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1034', '267', '0,267,1034,', '盘锦市', 1100, '211100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1035', '3360', '0,3360,1035,', '桃园市', 300, '830300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1036', '1035', '0,3360,1035,1036,', '桃园区', 301, '830301', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1037', '1316', '0,418,1316,1037,', '黄陵县', 632, '610632', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1038', '961', '0,1561,961,1038,', '呈贡区', 114, '530114', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1039', '961', '0,1561,961,1039,', '晋宁区', 115, '530115', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('104', '1786', '0,1786,104,', '驻马店市', 1700, '411700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1040', '961', '0,1561,961,1040,', '西山区', 112, '530112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1041', '961', '0,1561,961,1041,', '东川区', 113, '530113', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1042', '1044', '0,782,1044,1042,', '海港区', 302, '130302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1043', '1316', '0,418,1316,1043,', '洛川县', 629, '610629', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1044', '782', '0,782,1044,', '秦皇岛市', 300, '130300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1045', '1316', '0,418,1316,1045,', '甘泉县', 627, '610627', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1046', '1044', '0,782,1044,1046,', '抚宁区', 306, '130306', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1047', '1316', '0,418,1316,1047,', '富县', 628, '610628', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1048', '1044', '0,782,1044,1048,', '山海关区', 303, '130303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1049', '1316', '0,418,1316,1049,', '志丹县', 625, '610625', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('105', '80', '0,1970,80,105,', '绥滨县', 422, '230422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1050', '1044', '0,782,1044,1050,', '北戴河区', 304, '130304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1051', '1316', '0,418,1316,1051,', '吴起县', 626, '610626', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1052', '1316', '0,418,1316,1052,', '子长市', 623, '610623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1053', '1316', '0,418,1316,1053,', '延长县', 621, '610621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1054', '1316', '0,418,1316,1054,', '延川县', 622, '610622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1055', '961', '0,1561,961,1055,', '寻甸回族彝族自治县', 129, '530129', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1056', '1316', '0,418,1316,1056,', '宜川县', 630, '610630', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1057', '1426', '0,3282,1426,1057,', '高平市', 581, '140581', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1058', '1316', '0,418,1316,1058,', '黄龙县', 631, '610631', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1059', '961', '0,1561,961,1059,', '嵩明县', 127, '530127', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('106', '211', '0,891,211,106,', '陆丰市', 1581, '441581', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1060', '961', '0,1561,961,1060,', '禄劝彝族苗族自治县', 128, '530128', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1061', '961', '0,1561,961,1061,', '宜良县', 125, '530125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1062', '961', '0,1561,961,1062,', '石林彝族自治县', 126, '530126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1063', '961', '0,1561,961,1063,', '富民县', 124, '530124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1064', '1034', '0,267,1034,1064,', '大洼区', 1104, '211104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1065', '1034', '0,267,1034,1065,', '兴隆台区', 1103, '211103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1066', '1034', '0,267,1034,1066,', '双台子区', 1102, '211102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1067', '1164', '0,5,1164,1067,', '天长市', 1181, '341181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1068', '1071', '0,2559,1071,1068,', '卡若区', 302, '540302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1069', '1164', '0,5,1164,1069,', '明光市', 1182, '341182', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('107', '80', '0,1970,80,107,', '萝北县', 421, '230421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1070', '1034', '0,267,1034,1070,', '盘山县', 1122, '211122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1071', '2559', '0,2559,1071,', '昌都市', 300, '540300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1072', '1088', '0,891,1088,1072,', '麻章区', 811, '440811', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1073', '1259', '0,2147,1259,1073,', '循化撒拉族自治县', 225, '630225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1074', '1259', '0,2147,1259,1074,', '互助土族自治县', 223, '630223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1075', '1259', '0,2147,1259,1075,', '化隆回族自治县', 224, '630224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1076', '1690', '0,1690,1076,', '河东区', 102, '120102', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1077', '1690', '0,1690,1077,', '河西区', 103, '120103', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1078', '1690', '0,1690,1078,', '南开区', 104, '120104', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1079', '1690', '0,1690,1079,', '河北区', 105, '120105', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('108', '3282', '0,3282,108,', '长治市', 400, '140400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1080', '431', '0,431,1080,', '塔城地区', 4200, '654200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1081', '1080', '0,431,1080,1081,', '塔城市', 4201, '654201', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1082', '1690', '0,1690,1082,', '和平区', 101, '120101', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1083', '1080', '0,431,1080,1083,', '乌苏市', 4202, '654202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1084', '1690', '0,1690,1084,', '红桥区', 106, '120106', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1085', '1088', '0,891,1088,1085,', '坡头区', 804, '440804', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1086', '1088', '0,891,1088,1086,', '霞山区', 803, '440803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1087', '1088', '0,891,1088,1087,', '赤坎区', 802, '440802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1088', '891', '0,891,1088,', '湛江市', 800, '440800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1089', '2230', '0,1786,2230,1089,', '巩义市', 181, '410181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('109', '108', '0,3282,108,109,', '潞州区', 403, '140403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1090', '2230', '0,1786,2230,1090,', '新密市', 183, '410183', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1091', '2230', '0,1786,2230,1091,', '荥阳市', 182, '410182', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1092', '2230', '0,1786,2230,1092,', '登封市', 185, '410185', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1093', '2230', '0,1786,2230,1093,', '新郑市', 184, '410184', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1094', '1000', '0,2129,1000,1094,', '乐平市', 281, '360281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1095', '2901', '0,2901,1095,', '儋州市', 400, '460400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1096', '1080', '0,431,1080,1096,', '额敏县', 4221, '654221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1097', '1080', '0,431,1080,1097,', '沙湾县', 4223, '654223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1098', '1080', '0,431,1080,1098,', '托里县', 4224, '654224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1099', '1124', '0,2138,1124,1099,', '新吴区', 214, '320214', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('11', '14', '0,431,14,11,', '沙依巴克区', 103, '650103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('110', '108', '0,3282,108,110,', '上党区', 404, '140404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1100', '1124', '0,2138,1124,1100,', '梁溪区', 213, '320213', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1101', '1124', '0,2138,1124,1101,', '滨湖区', 211, '320211', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1102', '1088', '0,891,1088,1102,', '徐闻县', 825, '440825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1103', '1088', '0,891,1088,1103,', '遂溪县', 823, '440823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1104', '1107', '0,3282,1107,1104,', '侯马市', 1081, '141081', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1105', '1', '0,1105,', '福建省', 0, '350000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1106', '1107', '0,3282,1107,1106,', '霍州市', 1082, '141082', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1107', '3282', '0,3282,1107,', '临汾市', 1000, '141000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1108', '1107', '0,3282,1107,1108,', '尧都区', 1002, '141002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1109', '780', '0,780,1109,', '澳门新城', 109, '820109', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('111', '108', '0,3282,108,111,', '屯留区', 405, '140405', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1110', '780', '0,780,1110,', '圣方济各堂区', 107, '820107', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1111', '780', '0,780,1111,', '路氹城', 108, '820108', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1112', '780', '0,780,1112,', '风顺堂区', 105, '820105', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1113', '780', '0,780,1113,', '嘉模堂区', 106, '820106', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1114', '1080', '0,431,1080,1114,', '裕民县', 4225, '654225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1115', '1080', '0,431,1080,1115,', '和布克赛尔蒙古自治县', 4226, '654226', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1116', '830', '0,3015,830,1116,', '海宁市', 481, '330481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1117', '830', '0,3015,830,1117,', '平湖市', 482, '330482', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1118', '830', '0,3015,830,1118,', '桐乡市', 483, '330483', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1119', '1124', '0,2138,1124,1119,', '锡山区', 205, '320205', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('112', '108', '0,3282,108,112,', '潞城区', 406, '140406', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1120', '1124', '0,2138,1124,1120,', '惠山区', 206, '320206', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1121', '1164', '0,5,1164,1121,', '全椒县', 1124, '341124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1122', '1164', '0,5,1164,1122,', '来安县', 1122, '341122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1123', '1164', '0,5,1164,1123,', '定远县', 1125, '341125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1124', '2138', '0,2138,1124,', '无锡市', 200, '320200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1125', '1164', '0,5,1164,1125,', '凤阳县', 1126, '341126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1126', '1071', '0,2559,1071,1126,', '丁青县', 324, '540324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1127', '1071', '0,2559,1071,1127,', '察雅县', 325, '540325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1128', '1071', '0,2559,1071,1128,', '八宿县', 326, '540326', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1129', '1071', '0,2559,1071,1129,', '左贡县', 327, '540327', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('113', '89', '0,121,89,113,', '新化县', 1322, '431322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1130', '1071', '0,2559,1071,1130,', '江达县', 321, '540321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1131', '1071', '0,2559,1071,1131,', '贡觉县', 322, '540322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1132', '1071', '0,2559,1071,1132,', '类乌齐县', 323, '540323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1133', '1071', '0,2559,1071,1133,', '芒康县', 328, '540328', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1134', '1071', '0,2559,1071,1134,', '洛隆县', 329, '540329', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1135', '1107', '0,3282,1107,1135,', '大宁县', 1030, '141030', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1136', '1107', '0,3282,1107,1136,', '曲沃县', 1021, '141021', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1137', '1107', '0,3282,1107,1137,', '襄汾县', 1023, '141023', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1138', '1107', '0,3282,1107,1138,', '翼城县', 1022, '141022', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1139', '1107', '0,3282,1107,1139,', '古县', 1025, '141025', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('114', '89', '0,121,89,114,', '双峰县', 1321, '431321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1140', '1107', '0,3282,1107,1140,', '洪洞县', 1024, '141024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1141', '1107', '0,3282,1107,1141,', '浮山县', 1027, '141027', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1142', '1107', '0,3282,1107,1142,', '安泽县', 1026, '141026', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1143', '1107', '0,3282,1107,1143,', '乡宁县', 1029, '141029', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1144', '780', '0,780,1144,', '大堂区', 103, '820103', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1145', '1107', '0,3282,1107,1145,', '吉县', 1028, '141028', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1146', '780', '0,780,1146,', '望德堂区', 104, '820104', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1147', '780', '0,780,1147,', '花地玛堂区', 101, '820101', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1148', '1071', '0,2559,1071,1148,', '边坝县', 330, '540330', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1149', '780', '0,780,1149,', '圣安多尼堂区', 102, '820102', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('115', '2747', '0,2747,115,', '天门市', 9006, '429006', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1150', '2298', '0,1786,2298,1150,', '永城市', 1481, '411481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1151', '1690', '0,1690,1151,', '北辰区', 113, '120113', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1152', '1107', '0,3282,1107,1152,', '永和县', 1032, '141032', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1153', '1690', '0,1690,1153,', '武清区', 114, '120114', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1154', '1107', '0,3282,1107,1154,', '隰县', 1031, '141031', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1155', '1690', '0,1690,1155,', '宝坻区', 115, '120115', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1156', '1107', '0,3282,1107,1156,', '汾西县', 1034, '141034', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1157', '1690', '0,1690,1157,', '滨海新区', 116, '120116', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1158', '1107', '0,3282,1107,1158,', '蒲县', 1033, '141033', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1159', '1690', '0,1690,1159,', '东丽区', 110, '120110', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('116', '2747', '0,2747,116,', '潜江市', 9005, '429005', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1160', '1690', '0,1690,1160,', '西青区', 111, '120111', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1161', '2306', '0,121,2306,1161,', '资兴市', 1081, '431081', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1162', '1690', '0,1690,1162,', '津南区', 112, '120112', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1163', '1164', '0,5,1164,1163,', '琅琊区', 1102, '341102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1164', '5', '0,5,1164,', '滁州市', 1100, '341100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1165', '1690', '0,1690,1165,', '宁河区', 117, '120117', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1166', '1690', '0,1690,1166,', '静海区', 118, '120118', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1167', '1690', '0,1690,1167,', '蓟州区', 119, '120119', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1168', '1164', '0,5,1164,1168,', '南谯区', 1103, '341103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1169', '1271', '0,1786,1271,1169,', '宜阳县', 327, '410327', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('117', '2747', '0,2747,117,', '仙桃市', 9004, '429004', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1170', '1271', '0,1786,1271,1170,', '汝阳县', 326, '410326', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1171', '1271', '0,1786,1271,1171,', '伊川县', 329, '410329', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1172', '1271', '0,1786,1271,1172,', '洛宁县', 328, '410328', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1173', '1271', '0,1786,1271,1173,', '新安县', 323, '410323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1174', '1271', '0,1786,1271,1174,', '孟津县', 322, '410322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1175', '1271', '0,1786,1271,1175,', '嵩县', 325, '410325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1176', '1271', '0,1786,1271,1176,', '栾川县', 324, '410324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1177', '2147', '0,2147,1177,', '海西蒙古族藏族自治州', 2800, '632800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1178', '1177', '0,2147,1177,1178,', '茫崖市', 2803, '632803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1179', '1177', '0,2147,1177,1179,', '德令哈市', 2802, '632802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('118', '174', '0,891,174,118,', '南雄市', 282, '440282', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1180', '1177', '0,2147,1177,1180,', '格尔木市', 2801, '632801', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1181', '1630', '0,1105,1630,1181,', '福清市', 181, '350181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1182', '1355', '0,2825,1355,1182,', '雷波县', 3437, '513437', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1183', '1412', '0,3083,1412,1183,', '隆德县', 423, '640423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1184', '1355', '0,2825,1355,1184,', '美姑县', 3436, '513436', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1185', '1412', '0,3083,1412,1185,', '西吉县', 422, '640422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1186', '1412', '0,3083,1412,1186,', '彭阳县', 425, '640425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1187', '1412', '0,3083,1412,1187,', '泾源县', 424, '640424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1188', '1355', '0,2825,1355,1188,', '昭觉县', 3431, '513431', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1189', '1355', '0,2825,1355,1189,', '金阳县', 3430, '513430', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('119', '174', '0,891,174,119,', '乐昌市', 281, '440281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1190', '1', '0,1190,', '香港特别行政区', 0, '810000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1191', '1355', '0,2825,1355,1191,', '甘洛县', 3435, '513435', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1192', '1355', '0,2825,1355,1192,', '越西县', 3434, '513434', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1193', '1355', '0,2825,1355,1193,', '冕宁县', 3433, '513433', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1194', '1355', '0,2825,1355,1194,', '喜德县', 3432, '513432', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1195', '1730', '0,1730,1195,', '永川区', 118, '500118', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1196', '1730', '0,1730,1196,', '合川区', 117, '500117', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1197', '1730', '0,1730,1197,', '江津区', 116, '500116', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1198', '1730', '0,1730,1198,', '长寿区', 115, '500115', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1199', '1291', '0,2592,1291,1199,', '新巴尔虎右旗', 727, '150727', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('12', '14', '0,431,14,12,', '天山区', 102, '650102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('120', '1', '0,120,', '贵州省', 0, '520000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1200', '1730', '0,1730,1200,', '南川区', 119, '500119', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1201', '1291', '0,2592,1291,1201,', '陈巴尔虎旗', 725, '150725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1202', '1291', '0,2592,1291,1202,', '新巴尔虎左旗', 726, '150726', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1203', '1730', '0,1730,1203,', '璧山区', 120, '500120', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1204', '1291', '0,2592,1291,1204,', '鄂伦春自治旗', 723, '150723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1205', '1291', '0,2592,1291,1205,', '鄂温克族自治旗', 724, '150724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1206', '1291', '0,2592,1291,1206,', '阿荣旗', 721, '150721', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1207', '1291', '0,2592,1291,1207,', '莫力达瓦达斡尔族自治旗', 722, '150722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1208', '5', '0,5,1208,', '阜阳市', 1200, '341200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1209', '1355', '0,2825,1355,1209,', '普格县', 3428, '513428', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('121', '1', '0,121,', '湖南省', 0, '430000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1210', '986', '0,986,1210,', '平凉市', 800, '620800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1211', '1355', '0,2825,1355,1211,', '宁南县', 3427, '513427', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1212', '1355', '0,2825,1355,1212,', '会东县', 3426, '513426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1213', '1210', '0,986,1210,1213,', '崆峒区', 802, '620802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1214', '1355', '0,2825,1355,1214,', '会理县', 3425, '513425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1215', '1208', '0,5,1208,1215,', '颍泉区', 1204, '341204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1216', '1208', '0,5,1208,1216,', '颍州区', 1202, '341202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1217', '1208', '0,5,1208,1217,', '颍东区', 1203, '341203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1218', '1355', '0,2825,1355,1218,', '布拖县', 3429, '513429', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1219', '1177', '0,2147,1177,1219,', '都兰县', 2822, '632822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('122', '104', '0,1786,104,122,', '正阳县', 1724, '411724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1220', '1177', '0,2147,1177,1220,', '乌兰县', 2821, '632821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1221', '1222', '0,2747,1222,1221,', '沙市区', 1002, '421002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1222', '2747', '0,2747,1222,', '荆州市', 1000, '421000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1223', '1177', '0,2147,1177,1223,', '天峻县', 2823, '632823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1224', '1730', '0,1730,1224,', '开州区', 154, '500154', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1225', '1730', '0,1730,1225,', '荣昌区', 153, '500153', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1226', '1730', '0,1730,1226,', '潼南区', 152, '500152', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1227', '1730', '0,1730,1227,', '铜梁区', 151, '500151', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1228', '1730', '0,1730,1228,', '武隆区', 156, '500156', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1229', '1730', '0,1730,1229,', '梁平区', 155, '500155', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('123', '104', '0,1786,104,123,', '平舆县', 1723, '411723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1230', '1341', '0,1786,1341,1230,', '项城市', 1681, '411681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1231', '1222', '0,2747,1222,1231,', '荆州区', 1003, '421003', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1232', '1333', '0,121,1333,1232,', '洪江市', 1281, '431281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1233', '1333', '0,121,1333,1233,', '辰溪县', 1223, '431223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1234', '1333', '0,121,1333,1234,', '沅陵县', 1222, '431222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1235', '1333', '0,121,1333,1235,', '会同县', 1225, '431225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1236', '1333', '0,121,1333,1236,', '溆浦县', 1224, '431224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1237', '1333', '0,121,1333,1237,', '新晃侗族自治县', 1227, '431227', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1238', '1333', '0,121,1333,1238,', '麻阳苗族自治县', 1226, '431226', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1239', '1333', '0,121,1333,1239,', '靖州苗族侗族自治县', 1229, '431229', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('124', '104', '0,1786,104,124,', '泌阳县', 1726, '411726', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1240', '1333', '0,121,1333,1240,', '芷江侗族自治县', 1228, '431228', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1241', '1276', '0,3015,1276,1241,', '德清县', 521, '330521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1242', '1276', '0,3015,1276,1242,', '长兴县', 522, '330522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1243', '1276', '0,3015,1276,1243,', '安吉县', 523, '330523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1244', '1333', '0,121,1333,1244,', '通道侗族自治县', 1230, '431230', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1245', '1341', '0,1786,1341,1245,', '郸城县', 1625, '411625', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1246', '1341', '0,1786,1341,1246,', '沈丘县', 1624, '411624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1247', '1341', '0,1786,1341,1247,', '太康县', 1627, '411627', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1248', '1341', '0,1786,1341,1248,', '淮阳县', 1626, '411626', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1249', '1341', '0,1786,1341,1249,', '扶沟县', 1621, '411621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('125', '104', '0,1786,104,125,', '确山县', 1725, '411725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1250', '1341', '0,1786,1341,1250,', '商水县', 1623, '411623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1251', '1341', '0,1786,1341,1251,', '西华县', 1622, '411622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1252', '1341', '0,1786,1341,1252,', '鹿邑县', 1628, '411628', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1253', '1398', '0,2747,1398,1253,', '枝江市', 583, '420583', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1254', '1398', '0,2747,1398,1254,', '当阳市', 582, '420582', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1255', '1398', '0,2747,1398,1255,', '宜都市', 581, '420581', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1256', '1289', '0,1561,1289,1256,', '墨江哈尼族自治县', 822, '530822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1257', '1289', '0,1561,1289,1257,', '景东彝族自治县', 823, '530823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1258', '1289', '0,1561,1289,1258,', '宁洱哈尼族彝族自治县', 821, '530821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1259', '2147', '0,2147,1259,', '海东市', 200, '630200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('126', '104', '0,1786,104,126,', '上蔡县', 1722, '411722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1260', '1289', '0,1561,1289,1260,', '澜沧拉祜族自治县', 828, '530828', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1261', '1289', '0,1561,1289,1261,', '西盟佤族自治县', 829, '530829', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1262', '1289', '0,1561,1289,1262,', '江城哈尼族彝族自治县', 826, '530826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1263', '1289', '0,1561,1289,1263,', '孟连傣族拉祜族佤族自治县', 827, '530827', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1264', '1333', '0,121,1333,1264,', '中方县', 1221, '431221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1265', '1289', '0,1561,1289,1265,', '景谷傣族彝族自治县', 824, '530824', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1266', '1289', '0,1561,1289,1266,', '镇沅彝族哈尼族拉祜族自治县', 825, '530825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1267', '1271', '0,1786,1271,1267,', '涧西区', 305, '410305', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1268', '1271', '0,1786,1271,1268,', '瀍河回族区', 304, '410304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1269', '1271', '0,1786,1271,1269,', '吉利区', 306, '410306', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('127', '104', '0,1786,104,127,', '西平县', 1721, '411721', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1270', '1276', '0,3015,1276,1270,', '南浔区', 503, '330503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1271', '1786', '0,1786,1271,', '洛阳市', 300, '410300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1272', '1271', '0,1786,1271,1272,', '西工区', 303, '410303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1273', '1271', '0,1786,1271,1273,', '老城区', 302, '410302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1274', '1279', '0,2900,1279,1274,', '芝罘区', 602, '370602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1275', '1259', '0,2147,1259,1275,', '平安区', 203, '630203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1276', '3015', '0,3015,1276,', '湖州市', 500, '330500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1277', '1276', '0,3015,1276,1277,', '吴兴区', 502, '330502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1278', '1259', '0,2147,1259,1278,', '乐都区', 202, '630202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1279', '2900', '0,2900,1279,', '烟台市', 600, '370600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('128', '660', '0,1561,660,128,', '福贡县', 3323, '533323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1280', '1629', '0,986,1629,1280,', '夏河县', 3027, '623027', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1281', '1629', '0,986,1629,1281,', '玛曲县', 3025, '623025', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1282', '1629', '0,986,1629,1282,', '碌曲县', 3026, '623026', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1283', '1629', '0,986,1629,1283,', '舟曲县', 3023, '623023', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1284', '1271', '0,1786,1271,1284,', '洛龙区', 311, '410311', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1285', '1629', '0,986,1629,1285,', '迭部县', 3024, '623024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1286', '1629', '0,986,1629,1286,', '临潭县', 3021, '623021', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1287', '1629', '0,986,1629,1287,', '卓尼县', 3022, '623022', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1288', '1291', '0,2592,1291,1288,', '扎赉诺尔区', 703, '150703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1289', '1561', '0,1561,1289,', '普洱市', 800, '530800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('129', '104', '0,1786,104,129,', '遂平县', 1728, '411728', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1290', '1291', '0,2592,1291,1290,', '海拉尔区', 702, '150702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1291', '2592', '0,2592,1291,', '呼伦贝尔市', 700, '150700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1292', '1259', '0,2147,1259,1292,', '民和回族土族自治县', 222, '630222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1293', '1289', '0,1561,1289,1293,', '思茅区', 802, '530802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1294', '1302', '0,267,1302,1294,', '凌河区', 703, '210703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1295', '1302', '0,267,1302,1295,', '古塔区', 702, '210702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1296', '1398', '0,2747,1398,1296,', '兴山县', 526, '420526', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1297', '1398', '0,2747,1398,1297,', '远安县', 525, '420525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1298', '1338', '0,120,1338,1298,', '普安县', 2323, '522323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1299', '1398', '0,2747,1398,1299,', '五峰土家族自治县', 529, '420529', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('13', '155', '0,2825,155,13,', '马边彝族自治县', 1133, '511133', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('130', '159', '0,2747,159,130,', '枣阳市', 683, '420683', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1300', '1398', '0,2747,1398,1300,', '长阳土家族自治县', 528, '420528', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1301', '1398', '0,2747,1398,1301,', '秭归县', 527, '420527', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1302', '267', '0,267,1302,', '锦州市', 700, '210700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1303', '2119', '0,2825,2119,1303,', '富顺县', 322, '510322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1304', '2119', '0,2825,2119,1304,', '荣县', 321, '510321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1305', '1279', '0,2900,1279,1305,', '莱山区', 613, '370613', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1306', '1338', '0,120,1338,1306,', '晴隆县', 2324, '522324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1307', '1279', '0,2900,1279,1307,', '蓬莱区', 614, '370614', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1308', '1338', '0,120,1338,1308,', '贞丰县', 2325, '522325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1309', '1338', '0,120,1338,1309,', '望谟县', 2326, '522326', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('131', '431', '0,431,131,', '博尔塔拉蒙古自治州', 2700, '652700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1310', '1316', '0,418,1316,1310,', '安塞区', 603, '610603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1311', '1338', '0,120,1338,1311,', '册亨县', 2327, '522327', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1312', '1338', '0,120,1338,1312,', '安龙县', 2328, '522328', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1313', '1316', '0,418,1316,1313,', '宝塔区', 602, '610602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1314', '1279', '0,2900,1279,1314,', '福山区', 611, '370611', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1315', '1279', '0,2900,1279,1315,', '牟平区', 612, '370612', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1316', '418', '0,418,1316,', '延安市', 600, '610600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1317', '1319', '0,1970,1319,1317,', '恒山区', 303, '230303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1318', '1319', '0,1970,1319,1318,', '鸡冠区', 302, '230302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1319', '1970', '0,1970,1319,', '鸡西市', 300, '230300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('132', '104', '0,1786,104,132,', '汝南县', 1727, '411727', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1320', '1324', '0,2592,1324,1320,', '锡林浩特市', 2502, '152502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1321', '1426', '0,3282,1426,1321,', '沁水县', 521, '140521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1322', '1324', '0,2592,1324,1322,', '二连浩特市', 2501, '152501', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1323', '1426', '0,3282,1426,1323,', '阳城县', 522, '140522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1324', '2592', '0,2592,1324,', '锡林郭勒盟', 2500, '152500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1325', '1426', '0,3282,1426,1325,', '陵川县', 524, '140524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1326', '1426', '0,3282,1426,1326,', '泽州县', 525, '140525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1327', '1319', '0,1970,1319,1327,', '麻山区', 307, '230307', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1328', '1302', '0,267,1302,1328,', '太和区', 711, '210711', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1329', '1319', '0,1970,1319,1329,', '城子河区', 306, '230306', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('133', '159', '0,2747,159,133,', '老河口市', 682, '420682', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1330', '1319', '0,1970,1319,1330,', '梨树区', 305, '230305', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1331', '1319', '0,1970,1319,1331,', '滴道区', 304, '230304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1332', '2092', '0,2825,2092,1332,', '华蓥市', 1681, '511681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1333', '121', '0,121,1333,', '怀化市', 1200, '431200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1334', '1210', '0,986,1210,1334,', '华亭市', 881, '620881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1335', '1333', '0,121,1333,1335,', '鹤城区', 1202, '431202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1336', '1302', '0,267,1302,1336,', '义县', 727, '210727', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1337', '1302', '0,267,1302,1337,', '黑山县', 726, '210726', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1338', '120', '0,120,1338,', '黔西南布依族苗族自治州', 2300, '522300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1339', '1338', '0,120,1338,1339,', '兴义市', 2301, '522301', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('134', '131', '0,431,131,134,', '博乐市', 2701, '652701', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1340', '1341', '0,1786,1341,1340,', '川汇区', 1602, '411602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1341', '1786', '0,1786,1341,', '周口市', 1600, '411600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1342', '1338', '0,120,1338,1342,', '兴仁市', 2302, '522302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1343', '1324', '0,2592,1324,1343,', '正镶白旗', 2529, '152529', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1344', '1324', '0,2592,1324,1344,', '镶黄旗', 2528, '152528', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1345', '1324', '0,2592,1324,1345,', '太仆寺旗', 2527, '152527', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1346', '1492', '0,891,1492,1346,', '兴宁市', 1481, '441481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1347', '1324', '0,2592,1324,1347,', '西乌珠穆沁旗', 2526, '152526', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1348', '1319', '0,1970,1319,1348,', '鸡东县', 321, '230321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1349', '1324', '0,2592,1324,1349,', '东乌珠穆沁旗', 2525, '152525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('135', '131', '0,431,131,135,', '阿拉山口市', 2702, '652702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1350', '1324', '0,2592,1324,1350,', '苏尼特右旗', 2524, '152524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1351', '1324', '0,2592,1324,1351,', '苏尼特左旗', 2523, '152523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1352', '1324', '0,2592,1324,1352,', '阿巴嘎旗', 2522, '152522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1353', '1613', '0,1941,1613,1353,', '荔浦市', 381, '450381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1354', '1355', '0,2825,1355,1354,', '西昌市', 3401, '513401', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1355', '2825', '0,2825,1355,', '凉山彝族自治州', 3400, '513400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1356', '1492', '0,891,1492,1356,', '蕉岭县', 1427, '441427', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1357', '1492', '0,891,1492,1357,', '平远县', 1426, '441426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1358', '1492', '0,891,1492,1358,', '五华县', 1424, '441424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1359', '1492', '0,891,1492,1359,', '丰顺县', 1423, '441423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('136', '104', '0,1786,104,136,', '新蔡县', 1729, '411729', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1360', '1492', '0,891,1492,1360,', '大埔县', 1422, '441422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1361', '1400', '0,5,1400,1361,', '枞阳县', 722, '340722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1362', '1582', '0,121,1582,1362,', '津市市', 781, '430781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1363', '431', '0,431,1363,', '北屯市', 9005, '659005', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1364', '431', '0,431,1364,', '五家渠市', 9004, '659004', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1365', '1400', '0,5,1400,1365,', '郊区', 711, '340711', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1366', '431', '0,431,1366,', '图木舒克市', 9003, '659003', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1367', '431', '0,431,1367,', '阿拉尔市', 9002, '659002', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1368', '431', '0,431,1368,', '昆玉市', 9009, '659009', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1369', '431', '0,431,1369,', '可克达拉市', 9008, '659008', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('137', '180', '0,986,180,137,', '积石山保安族东乡族撒拉族自治县', 2927, '622927', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1370', '431', '0,431,1370,', '双河市', 9007, '659007', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1371', '431', '0,431,1371,', '铁门关市', 9006, '659006', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1372', '431', '0,431,1372,', '石河子市', 9001, '659001', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1373', '1279', '0,2900,1279,1373,', '莱阳市', 682, '370682', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1374', '1279', '0,2900,1279,1374,', '莱州市', 683, '370683', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1375', '1279', '0,2900,1279,1375,', '蓬莱市', 684, '370684', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1376', '1279', '0,2900,1279,1376,', '招远市', 685, '370685', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1377', '1355', '0,2825,1355,1377,', '德昌县', 3424, '513424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1378', '1355', '0,2825,1355,1378,', '盐源县', 3423, '513423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1379', '1355', '0,2825,1355,1379,', '木里藏族自治县', 3422, '513422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('138', '108', '0,3282,108,138,', '襄垣县', 423, '140423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1380', '1279', '0,2900,1279,1380,', '龙口市', 681, '370681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1381', '1419', '0,891,1419,1381,', '增城区', 118, '440118', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1382', '1419', '0,891,1419,1382,', '从化区', 117, '440117', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1383', '1730', '0,1730,1383,', '九龙坡区', 107, '500107', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1384', '1319', '0,1970,1319,1384,', '密山市', 382, '230382', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1385', '1730', '0,1730,1385,', '沙坪坝区', 106, '500106', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1386', '1319', '0,1970,1319,1386,', '虎林市', 381, '230381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1387', '1419', '0,891,1419,1387,', '南沙区', 115, '440115', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1388', '1730', '0,1730,1388,', '江北区', 105, '500105', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1389', '1419', '0,891,1419,1389,', '花都区', 114, '440114', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('139', '180', '0,986,180,139,', '广河县', 2924, '622924', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1390', '1730', '0,1730,1390,', '大渡口区', 104, '500104', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1391', '1279', '0,2900,1279,1391,', '栖霞市', 686, '370686', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1392', '1419', '0,891,1419,1392,', '番禺区', 113, '440113', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1393', '1279', '0,2900,1279,1393,', '海阳市', 687, '370687', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1394', '1419', '0,891,1419,1394,', '黄埔区', 112, '440112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1395', '1419', '0,891,1419,1395,', '白云区', 111, '440111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1396', '1730', '0,1730,1396,', '北碚区', 109, '500109', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1397', '1730', '0,1730,1397,', '南岸区', 108, '500108', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1398', '2747', '0,2747,1398,', '宜昌市', 500, '420500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1399', '1730', '0,1730,1399,', '綦江区', 110, '500110', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('14', '431', '0,431,14,', '乌鲁木齐市', 100, '650100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('140', '180', '0,986,180,140,', '永靖县', 2923, '622923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1400', '5', '0,5,1400,', '铜陵市', 700, '340700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1401', '1400', '0,5,1400,1401,', '义安区', 706, '340706', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1402', '1398', '0,2747,1398,1402,', '点军区', 504, '420504', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1403', '1730', '0,1730,1403,', '黔江区', 114, '500114', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1404', '1398', '0,2747,1398,1404,', '伍家岗区', 503, '420503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1405', '1730', '0,1730,1405,', '巴南区', 113, '500113', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1406', '1398', '0,2747,1398,1406,', '西陵区', 502, '420502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1407', '1730', '0,1730,1407,', '渝北区', 112, '500112', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1408', '1400', '0,5,1400,1408,', '铜官区', 705, '340705', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1409', '1730', '0,1730,1409,', '大足区', 111, '500111', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('141', '108', '0,3282,108,141,', '平顺县', 425, '140425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1410', '1398', '0,2747,1398,1410,', '夷陵区', 506, '420506', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1411', '1398', '0,2747,1398,1411,', '猇亭区', 505, '420505', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1412', '3083', '0,3083,1412,', '固原市', 400, '640400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1413', '1412', '0,3083,1412,1413,', '原州区', 402, '640402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1414', '1302', '0,267,1302,1414,', '凌海市', 781, '210781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1415', '1419', '0,891,1419,1415,', '天河区', 106, '440106', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1416', '1419', '0,891,1419,1416,', '海珠区', 105, '440105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1417', '1419', '0,891,1419,1417,', '越秀区', 104, '440104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1418', '1419', '0,891,1419,1418,', '荔湾区', 103, '440103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1419', '891', '0,891,1419,', '广州市', 100, '440100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('142', '180', '0,986,180,142,', '东乡族自治县', 2926, '622926', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1420', '2129', '0,2129,1420,', '九江市', 400, '360400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1421', '1730', '0,1730,1421,', '渝中区', 103, '500103', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1422', '1210', '0,986,1210,1422,', '静宁县', 826, '620826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1423', '1730', '0,1730,1423,', '涪陵区', 102, '500102', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1424', '1291', '0,2592,1291,1424,', '根河市', 785, '150785', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1425', '1730', '0,1730,1425,', '万州区', 101, '500101', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1426', '3282', '0,3282,1426,', '晋城市', 500, '140500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1427', '1291', '0,2592,1291,1427,', '扎兰屯市', 783, '150783', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1428', '1210', '0,986,1210,1428,', '灵台县', 822, '620822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1429', '1291', '0,2592,1291,1429,', '额尔古纳市', 784, '150784', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('143', '108', '0,3282,108,143,', '黎城县', 426, '140426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1430', '1210', '0,986,1210,1430,', '崇信县', 823, '620823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1431', '1426', '0,3282,1426,1431,', '城区', 502, '140502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1432', '1291', '0,2592,1291,1432,', '满洲里市', 781, '150781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1433', '1291', '0,2592,1291,1433,', '牙克石市', 782, '150782', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1434', '1210', '0,986,1210,1434,', '庄浪县', 825, '620825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1435', '1420', '0,2129,1420,1435,', '浔阳区', 403, '360403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1436', '1420', '0,2129,1420,1436,', '柴桑区', 404, '360404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1437', '1420', '0,2129,1420,1437,', '濂溪区', 402, '360402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1438', '1210', '0,986,1210,1438,', '泾川县', 821, '620821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1439', '1464', '0,996,1464,1439,', '九台区', 113, '220113', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('144', '180', '0,986,180,144,', '和政县', 2925, '622925', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1440', '1464', '0,996,1464,1440,', '双阳区', 112, '220112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1441', '3360', '0,3360,1441,', '台中市', 400, '830400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1442', '1443', '0,5,1443,1442,', '迎江区', 802, '340802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1443', '5', '0,5,1443,', '安庆市', 800, '340800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1444', '1595', '0,418,1595,1444,', '华阴市', 582, '610582', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1445', '1443', '0,5,1443,1445,', '大观区', 803, '340803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1446', '1595', '0,418,1595,1446,', '韩城市', 581, '610581', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1447', '1302', '0,267,1302,1447,', '北镇市', 782, '210782', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1448', '1613', '0,1941,1613,1448,', '平乐县', 330, '450330', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1449', '1498', '0,986,1498,1449,', '礼县', 1226, '621226', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('145', '108', '0,3282,108,145,', '壶关县', 427, '140427', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1450', '1498', '0,986,1498,1450,', '西和县', 1225, '621225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1451', '1613', '0,1941,1613,1451,', '恭城瑶族自治县', 332, '450332', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1452', '1498', '0,986,1498,1452,', '两当县', 1228, '621228', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1453', '1498', '0,986,1498,1453,', '徽县', 1227, '621227', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1454', '1498', '0,986,1498,1454,', '文县', 1222, '621222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1455', '1498', '0,986,1498,1455,', '成县', 1221, '621221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1456', '1498', '0,986,1498,1456,', '康县', 1224, '621224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1457', '1498', '0,986,1498,1457,', '宕昌县', 1223, '621223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1458', '1461', '0,782,1461,1458,', '路南区', 202, '130202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1459', '1582', '0,121,1582,1459,', '安乡县', 721, '430721', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('146', '108', '0,3282,108,146,', '长子县', 428, '140428', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1460', '1461', '0,782,1461,1460,', '路北区', 203, '130203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1461', '782', '0,782,1461,', '唐山市', 200, '130200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1462', '1582', '0,121,1582,1462,', '澧县', 723, '430723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1463', '1582', '0,121,1582,1463,', '汉寿县', 722, '430722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1464', '996', '0,996,1464,', '长春市', 100, '220100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1465', '1582', '0,121,1582,1465,', '桃源县', 725, '430725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1466', '1461', '0,782,1461,1466,', '丰南区', 207, '130207', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1467', '1582', '0,121,1582,1467,', '临澧县', 724, '430724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1468', '1461', '0,782,1461,1468,', '古冶区', 204, '130204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1469', '1464', '0,996,1464,1469,', '南关区', 102, '220102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('147', '108', '0,3282,108,147,', '武乡县', 429, '140429', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1470', '1461', '0,782,1461,1470,', '开平区', 205, '130205', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1471', '1582', '0,121,1582,1471,', '石门县', 726, '430726', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1472', '1464', '0,996,1464,1472,', '朝阳区', 104, '220104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1473', '878', '0,1105,878,1473,', '福安市', 981, '350981', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1474', '1464', '0,996,1464,1474,', '宽城区', 103, '220103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1475', '878', '0,1105,878,1475,', '福鼎市', 982, '350982', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1476', '1461', '0,782,1461,1476,', '丰润区', 208, '130208', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1477', '1464', '0,996,1464,1477,', '绿园区', 106, '220106', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1478', '1461', '0,782,1461,1478,', '曹妃甸区', 209, '130209', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1479', '1464', '0,996,1464,1479,', '二道区', 105, '220105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('148', '180', '0,986,180,148,', '康乐县', 2922, '622922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1480', '2129', '0,2129,1480,', '萍乡市', 300, '360300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1481', '1613', '0,1941,1613,1481,', '灌阳县', 327, '450327', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1482', '1613', '0,1941,1613,1482,', '永福县', 326, '450326', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1483', '1613', '0,1941,1613,1483,', '资源县', 329, '450329', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1484', '1613', '0,1941,1613,1484,', '龙胜各族自治县', 328, '450328', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1485', '1613', '0,1941,1613,1485,', '灵川县', 323, '450323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1486', '1613', '0,1941,1613,1486,', '兴安县', 325, '450325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1487', '1613', '0,1941,1613,1487,', '全州县', 324, '450324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1488', '1480', '0,2129,1480,1488,', '安源区', 302, '360302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1489', '1613', '0,1941,1613,1489,', '阳朔县', 321, '450321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('149', '180', '0,986,180,149,', '临夏县', 2921, '622921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1490', '1492', '0,891,1492,1490,', '梅县区', 1403, '441403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1491', '1492', '0,891,1492,1491,', '梅江区', 1402, '441402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1492', '891', '0,891,1492,', '梅州市', 1400, '441400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1493', '1649', '0,3015,1649,1493,', '温岭市', 1081, '331081', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1494', '1649', '0,3015,1649,1494,', '临海市', 1082, '331082', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1495', '1649', '0,3015,1649,1495,', '玉环市', 1083, '331083', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1496', '1480', '0,2129,1480,1496,', '湘东区', 313, '360313', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1497', '1688', '0,2559,1688,1497,', '萨嘎县', 236, '540236', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1498', '986', '0,986,1498,', '陇南市', 1200, '621200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1499', '1688', '0,2559,1688,1499,', '岗巴县', 237, '540237', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('15', '14', '0,431,14,15,', '米东区', 109, '650109', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('150', '63', '0,2900,63,150,', '青州市', 781, '370781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1500', '1498', '0,986,1498,1500,', '武都区', 1202, '621202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1501', '1461', '0,782,1461,1501,', '滦南县', 224, '130224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1502', '1688', '0,2559,1688,1502,', '仲巴县', 232, '540232', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1503', '1461', '0,782,1461,1503,', '乐亭县', 225, '130225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1504', '1688', '0,2559,1688,1504,', '亚东县', 233, '540233', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1505', '1688', '0,2559,1688,1505,', '吉隆县', 234, '540234', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1506', '1688', '0,2559,1688,1506,', '聂拉木县', 235, '540235', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1507', '1464', '0,996,1464,1507,', '农安县', 122, '220122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1508', '1461', '0,782,1461,1508,', '玉田县', 229, '130229', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1509', '1461', '0,782,1461,1509,', '迁西县', 227, '130227', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('151', '63', '0,2900,63,151,', '诸城市', 782, '370782', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1510', '1014', '0,1014,1510,', '崇明区', 151, '310151', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1511', '1480', '0,2129,1480,1511,', '上栗县', 322, '360322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1512', '1684', '0,1561,1684,1512,', '广南县', 2627, '532627', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1513', '1480', '0,2129,1480,1513,', '芦溪县', 323, '360323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1514', '1684', '0,1561,1684,1514,', '丘北县', 2626, '532626', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1515', '1684', '0,1561,1684,1515,', '马关县', 2625, '532625', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1516', '1480', '0,2129,1480,1516,', '莲花县', 321, '360321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1517', '1684', '0,1561,1684,1517,', '麻栗坡县', 2624, '532624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1518', '1684', '0,1561,1684,1518,', '西畴县', 2623, '532623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1519', '1684', '0,1561,1684,1519,', '砚山县', 2622, '532622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('152', '63', '0,2900,63,152,', '寿光市', 783, '370783', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1520', '2825', '0,2825,1520,', '达州市', 1700, '511700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1521', '1520', '0,2825,1520,1521,', '通川区', 1702, '511702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1522', '1520', '0,2825,1520,1522,', '达川区', 1703, '511703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1523', '1684', '0,1561,1684,1523,', '富宁县', 2628, '532628', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1524', '1014', '0,1014,1524,', '奉贤区', 120, '310120', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1525', '1014', '0,1014,1525,', '闵行区', 112, '310112', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1526', '1014', '0,1014,1526,', '宝山区', 113, '310113', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1527', '1014', '0,1014,1527,', '嘉定区', 114, '310114', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1528', '1014', '0,1014,1528,', '浦东新区', 115, '310115', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1529', '108', '0,3282,108,1529,', '沁县', 430, '140430', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('153', '63', '0,2900,63,153,', '安丘市', 784, '370784', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1530', '1014', '0,1014,1530,', '金山区', 116, '310116', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1531', '108', '0,3282,108,1531,', '沁源县', 431, '140431', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1532', '1014', '0,1014,1532,', '松江区', 117, '310117', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1533', '1014', '0,1014,1533,', '青浦区', 118, '310118', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1534', '2825', '0,2825,1534,', '攀枝花市', 400, '510400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1535', '1534', '0,2825,1534,1535,', '西区', 403, '510403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1536', '1534', '0,2825,1534,1536,', '东区', 402, '510402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1537', '1595', '0,418,1595,1537,', '富平县', 528, '610528', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1538', '1595', '0,418,1595,1538,', '蒲城县', 526, '610526', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1539', '1595', '0,418,1595,1539,', '白水县', 527, '610527', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('154', '155', '0,2825,155,154,', '市中区', 1102, '511102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1540', '1595', '0,418,1595,1540,', '合阳县', 524, '610524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1541', '1595', '0,418,1595,1541,', '澄城县', 525, '610525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1542', '1595', '0,418,1595,1542,', '潼关县', 522, '610522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1543', '1595', '0,418,1595,1543,', '大荔县', 523, '610523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1544', '1441', '0,3360,1441,1544,', '龙井区', 427, '830427', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1545', '1441', '0,3360,1441,1545,', '雾峰区', 428, '830428', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1546', '1441', '0,3360,1441,1546,', '和平区', 429, '830429', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1547', '1441', '0,3360,1441,1547,', '外埔区', 423, '830423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1548', '1441', '0,3360,1441,1548,', '大安区', 424, '830424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1549', '1441', '0,3360,1441,1549,', '乌日区', 425, '830425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('155', '2825', '0,2825,155,', '乐山市', 1100, '511100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1550', '1441', '0,3360,1441,1550,', '大肚区', 426, '830426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1551', '1520', '0,2825,1520,1551,', '宣汉县', 1722, '511722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1552', '1554', '0,267,1554,1552,', '银州区', 1202, '211202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1553', '1520', '0,2825,1520,1553,', '开江县', 1723, '511723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1554', '267', '0,267,1554,', '铁岭市', 1200, '211200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1555', '1520', '0,2825,1520,1555,', '大竹县', 1724, '511724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1556', '1554', '0,267,1554,1556,', '清河区', 1204, '211204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1557', '1520', '0,2825,1520,1557,', '渠县', 1725, '511725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1558', '1702', '0,2138,1702,1558,', '邳州市', 382, '320382', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1559', '1554', '0,267,1554,1559,', '铁岭县', 1221, '211221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('156', '63', '0,2900,63,156,', '高密市', 785, '370785', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1560', '1702', '0,2138,1702,1560,', '新沂市', 381, '320381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1561', '1', '0,1561,', '云南省', 0, '530000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1562', '1441', '0,3360,1441,1562,', '大雅区', 420, '830420', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1563', '1441', '0,3360,1441,1563,', '新小区', 421, '830421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1564', '1441', '0,3360,1441,1564,', '石冈区', 422, '830422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1565', '1441', '0,3360,1441,1565,', '梧栖区', 416, '830416', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1566', '1441', '0,3360,1441,1566,', '后里区', 417, '830417', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1567', '1464', '0,996,1464,1567,', '榆树市', 182, '220182', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1568', '1441', '0,3360,1441,1568,', '神冈区', 418, '830418', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1569', '1441', '0,3360,1441,1569,', '潭子区', 419, '830419', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('157', '63', '0,2900,63,157,', '昌邑市', 786, '370786', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1570', '1441', '0,3360,1441,1570,', '东势区', 412, '830412', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1571', '1464', '0,996,1464,1571,', '德惠市', 183, '220183', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1572', '1441', '0,3360,1441,1572,', '大甲区', 413, '830413', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1573', '1441', '0,3360,1441,1573,', '清水区', 414, '830414', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1574', '1441', '0,3360,1441,1574,', '沙鹿区', 415, '830415', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1575', '1613', '0,1941,1613,1575,', '临桂区', 312, '450312', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1576', '1613', '0,1941,1613,1576,', '雁山区', 311, '450311', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1577', '1534', '0,2825,1534,1577,', '盐边县', 422, '510422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1578', '1580', '0,2900,1580,1578,', '环翠区', 1002, '371002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1579', '1580', '0,2900,1580,1579,', '文登区', 1003, '371003', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('158', '159', '0,2747,159,158,', '襄城区', 602, '420602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1580', '2900', '0,2900,1580,', '威海市', 1000, '371000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1581', '1534', '0,2825,1534,1581,', '米易县', 421, '510421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1582', '121', '0,121,1582,', '常德市', 700, '430700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1583', '1582', '0,121,1582,1583,', '鼎城区', 703, '430703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1584', '1582', '0,121,1582,1584,', '武陵区', 702, '430702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1585', '1441', '0,3360,1441,1585,', '大里区', 410, '830410', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1586', '1693', '0,891,1693,1586,', '信宜市', 983, '440983', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1587', '1441', '0,3360,1441,1587,', '太平区', 411, '830411', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1588', '1649', '0,3015,1649,1588,', '天台县', 1023, '331023', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1589', '1693', '0,891,1693,1589,', '化州市', 982, '440982', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('159', '2747', '0,2747,159,', '襄阳市', 600, '420600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1590', '1595', '0,418,1595,1590,', '临渭区', 502, '610502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1591', '1649', '0,3015,1649,1591,', '仙居县', 1024, '331024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1592', '1693', '0,891,1693,1592,', '高州市', 981, '440981', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1593', '1595', '0,418,1595,1593,', '华州区', 503, '610503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1594', '1014', '0,1014,1594,', '杨浦区', 110, '310110', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1595', '418', '0,418,1595,', '渭南市', 500, '610500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1596', '1014', '0,1014,1596,', '黄浦区', 101, '310101', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1597', '1441', '0,3360,1441,1597,', '北区', 405, '830405', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1598', '1441', '0,3360,1441,1598,', '西屯区', 406, '830406', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1599', '1441', '0,3360,1441,1599,', '南屯区', 407, '830407', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('16', '20', '0,2592,20,16,', '东胜区', 602, '150602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('160', '159', '0,2747,159,160,', '襄州区', 607, '420607', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1600', '1014', '0,1014,1600,', '徐汇区', 104, '310104', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1601', '1441', '0,3360,1441,1601,', '北屯区', 408, '830408', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1602', '1014', '0,1014,1602,', '长宁区', 105, '310105', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1603', '1613', '0,1941,1613,1603,', '七星区', 305, '450305', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1604', '1441', '0,3360,1441,1604,', '中区', 401, '830401', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1605', '1014', '0,1014,1605,', '静安区', 106, '310106', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1606', '1613', '0,1941,1613,1606,', '象山区', 304, '450304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1607', '1441', '0,3360,1441,1607,', '东区', 402, '830402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1608', '1014', '0,1014,1608,', '普陀区', 107, '310107', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1609', '1441', '0,3360,1441,1609,', '西区', 403, '830403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('161', '159', '0,2747,159,161,', '樊城区', 606, '420606', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1610', '1441', '0,3360,1441,1610,', '南区', 404, '830404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1611', '1014', '0,1014,1611,', '虹口区', 109, '310109', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1612', '1554', '0,267,1554,1612,', '昌图县', 1224, '211224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1613', '1941', '0,1941,1613,', '桂林市', 300, '450300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1614', '1534', '0,2825,1534,1614,', '仁和区', 411, '510411', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1615', '1554', '0,267,1554,1615,', '西丰县', 1223, '211223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1616', '1613', '0,1941,1613,1616,', '叠彩区', 303, '450303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1617', '1613', '0,1941,1613,1617,', '秀峰区', 302, '450302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1618', '1441', '0,3360,1441,1618,', '丰原区', 409, '830409', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1619', '1834', '0,2147,1834,1619,', '城西区', 104, '630104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('162', '201', '0,418,201,162,', '旬阳县', 928, '610928', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1620', '1834', '0,2147,1834,1620,', '城北区', 105, '630105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1621', '1834', '0,2147,1834,1621,', '城东区', 102, '630102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1622', '1834', '0,2147,1834,1622,', '城中区', 103, '630103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1623', '1649', '0,3015,1649,1623,', '三门县', 1022, '331022', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1624', '1461', '0,782,1461,1624,', '迁安市', 283, '130283', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1625', '1461', '0,782,1461,1625,', '遵化市', 281, '130281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1626', '1630', '0,1105,1630,1626,', '马尾区', 105, '350105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1627', '1461', '0,782,1461,1627,', '滦州市', 284, '130284', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1628', '1629', '0,986,1629,1628,', '合作市', 3001, '623001', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1629', '986', '0,986,1629,', '甘南藏族自治州', 3000, '623000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('163', '201', '0,418,201,163,', '白河县', 929, '610929', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1630', '1105', '0,1105,1630,', '福州市', 100, '350100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1631', '1649', '0,3015,1649,1631,', '椒江区', 1002, '331002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1632', '1630', '0,1105,1630,1632,', '鼓楼区', 102, '350102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1633', '1649', '0,3015,1649,1633,', '黄岩区', 1003, '331003', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1634', '1630', '0,1105,1630,1634,', '台江区', 103, '350103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1635', '1649', '0,3015,1649,1635,', '路桥区', 1004, '331004', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1636', '1630', '0,1105,1630,1636,', '仓山区', 104, '350104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1637', '1657', '0,418,1657,1637,', '柞水县', 1026, '611026', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1638', '1657', '0,418,1657,1638,', '镇安县', 1025, '611025', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1639', '1657', '0,418,1657,1639,', '山阳县', 1024, '611024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('164', '201', '0,418,201,164,', '平利县', 926, '610926', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1640', '1657', '0,418,1657,1640,', '商南县', 1023, '611023', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1641', '1834', '0,2147,1834,1641,', '湟中县', 122, '630122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1642', '1657', '0,418,1657,1642,', '丹凤县', 1022, '611022', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1643', '1834', '0,2147,1834,1643,', '湟源县', 123, '630123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1644', '1657', '0,418,1657,1644,', '洛南县', 1021, '611021', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1645', '1834', '0,2147,1834,1645,', '大通回族土族自治县', 121, '630121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1646', '1208', '0,5,1208,1646,', '界首市', 1282, '341282', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1647', '1630', '0,1105,1630,1647,', '晋安区', 111, '350111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1648', '1630', '0,1105,1630,1648,', '长乐区', 112, '350112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1649', '3015', '0,3015,1649,', '台州市', 1000, '331000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('165', '201', '0,418,201,165,', '镇坪县', 927, '610927', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1650', '1630', '0,1105,1630,1650,', '平潭县', 128, '350128', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1651', '1630', '0,1105,1630,1651,', '闽侯县', 121, '350121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1652', '1630', '0,1105,1630,1652,', '连江县', 122, '350122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1653', '1630', '0,1105,1630,1653,', '罗源县', 123, '350123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1654', '1630', '0,1105,1630,1654,', '闽清县', 124, '350124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1655', '1630', '0,1105,1630,1655,', '永泰县', 125, '350125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1656', '1657', '0,418,1657,1656,', '商州区', 1002, '611002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1657', '418', '0,418,1657,', '商洛市', 1000, '611000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1658', '1688', '0,2559,1688,1658,', '拉孜县', 225, '540225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1659', '1554', '0,267,1554,1659,', '开原市', 1282, '211282', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('166', '174', '0,891,174,166,', '曲江区', 205, '440205', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1660', '1688', '0,2559,1688,1660,', '昂仁县', 226, '540226', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1661', '1554', '0,267,1554,1661,', '调兵山市', 1281, '211281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1662', '1688', '0,2559,1688,1662,', '谢通门县', 227, '540227', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1663', '1688', '0,2559,1688,1663,', '白朗县', 228, '540228', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1664', '1688', '0,2559,1688,1664,', '南木林县', 221, '540221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1665', '1688', '0,2559,1688,1665,', '江孜县', 222, '540222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1666', '1688', '0,2559,1688,1666,', '定日县', 223, '540223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1667', '1688', '0,2559,1688,1667,', '萨迦县', 224, '540224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1668', '1688', '0,2559,1688,1668,', '仁布县', 229, '540229', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1669', '1580', '0,2900,1580,1669,', '荣成市', 1082, '371082', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('167', '201', '0,418,201,167,', '紫阳县', 924, '610924', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1670', '1688', '0,2559,1688,1670,', '康马县', 230, '540230', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1671', '1580', '0,2900,1580,1671,', '乳山市', 1083, '371083', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1672', '1688', '0,2559,1688,1672,', '定结县', 231, '540231', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1673', '1702', '0,2138,1702,1673,', '泉山区', 311, '320311', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1674', '1702', '0,2138,1702,1674,', '铜山区', 312, '320312', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1675', '1694', '0,120,1694,1675,', '沿河土家族自治县', 627, '520627', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1676', '1694', '0,120,1694,1676,', '松桃苗族自治县', 628, '520628', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1677', '1694', '0,120,1694,1677,', '江口县', 621, '520621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1678', '1694', '0,120,1694,1678,', '玉屏侗族自治县', 622, '520622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1679', '1694', '0,120,1694,1679,', '石阡县', 623, '520623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('168', '174', '0,891,174,168,', '浈江区', 204, '440204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1680', '1694', '0,120,1694,1680,', '思南县', 624, '520624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1681', '1694', '0,120,1694,1681,', '印江土家族苗族自治县', 625, '520625', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1682', '1694', '0,120,1694,1682,', '德江县', 626, '520626', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1683', '1684', '0,1561,1684,1683,', '文山市', 2601, '532601', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1684', '1561', '0,1561,1684,', '文山壮族苗族自治州', 2600, '532600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1685', '1702', '0,2138,1702,1685,', '睢宁县', 324, '320324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1686', '1702', '0,2138,1702,1686,', '沛县', 322, '320322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1687', '1702', '0,2138,1702,1687,', '丰县', 321, '320321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1688', '2559', '0,2559,1688,', '日喀则市', 200, '540200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1689', '1688', '0,2559,1688,1689,', '桑珠孜区', 202, '540202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('169', '201', '0,418,201,169,', '岚皋县', 925, '610925', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1690', '1', '0,1690,', '天津市', 0, '120000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1691', '1693', '0,891,1693,1691,', '电白区', 904, '440904', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1692', '1693', '0,891,1693,1692,', '茂南区', 902, '440902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1693', '891', '0,891,1693,', '茂名市', 900, '440900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1694', '120', '0,120,1694,', '铜仁市', 600, '520600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1695', '1694', '0,120,1694,1695,', '碧江区', 602, '520602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1696', '1694', '0,120,1694,1696,', '万山区', 603, '520603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1697', '1208', '0,5,1208,1697,', '太和县', 1222, '341222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1698', '1702', '0,2138,1702,1698,', '贾汪区', 305, '320305', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1699', '1702', '0,2138,1702,1699,', '鼓楼区', 302, '320302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('17', '20', '0,2592,20,17,', '康巴什区', 603, '150603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('170', '174', '0,891,174,170,', '武江区', 203, '440203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1700', '1702', '0,2138,1702,1700,', '云龙区', 303, '320303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1701', '1208', '0,5,1208,1701,', '临泉县', 1221, '341221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1702', '2138', '0,2138,1702,', '徐州市', 300, '320300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1703', '1208', '0,5,1208,1703,', '颍上县', 1226, '341226', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1704', '1208', '0,5,1208,1704,', '阜南县', 1225, '341225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1705', '1190', '0,1190,1705,', '北区', 110, '810110', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1706', '1190', '0,1190,1706,', '大埔区', 111, '810111', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1707', '1190', '0,1190,1707,', '沙田区', 112, '810112', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1708', '1719', '0,3015,1719,1708,', '北仑区', 206, '330206', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1709', '1950', '0,2825,1950,1709,', '雅江县', 3325, '513325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('171', '201', '0,418,201,171,', '石泉县', 922, '610922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1710', '1190', '0,1190,1710,', '西贡区', 113, '810113', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1711', '1950', '0,2825,1950,1711,', '九龙县', 3324, '513324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1712', '1190', '0,1190,1712,', '荃湾区', 114, '810114', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1713', '1950', '0,2825,1950,1713,', '丹巴县', 3323, '513323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1714', '1190', '0,1190,1714,', '屯门区', 115, '810115', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1715', '1950', '0,2825,1950,1715,', '泸定县', 3322, '513322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1716', '1190', '0,1190,1716,', '元朗区', 116, '810116', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1717', '1719', '0,3015,1719,1717,', '海曙区', 203, '330203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1718', '1719', '0,3015,1719,1718,', '江北区', 205, '330205', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1719', '3015', '0,3015,1719,', '宁波市', 200, '330200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('172', '201', '0,418,201,172,', '宁陕县', 923, '610923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1720', '3083', '0,3083,1720,', '吴忠市', 300, '640300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1721', '1190', '0,1190,1721,', '深水埗区', 106, '810106', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1722', '1190', '0,1190,1722,', '九龙城区', 107, '810107', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1723', '1786', '0,1786,1723,', '南阳市', 1300, '411300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1724', '1720', '0,3083,1720,1724,', '利通区', 302, '640302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1725', '1190', '0,1190,1725,', '黄大仙区', 108, '810108', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1726', '1190', '0,1190,1726,', '观塘区', 109, '810109', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1727', '1720', '0,3083,1720,1727,', '红寺堡区', 303, '640303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1728', '1723', '0,1786,1723,1728,', '宛城区', 1302, '411302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1729', '1723', '0,1786,1723,1729,', '卧龙区', 1303, '411303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('173', '131', '0,431,131,173,', '精河县', 2722, '652722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1730', '1', '0,1730,', '重庆市', 0, '500000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1731', '3440', '0,1970,3440,1731,', '汤原县', 828, '230828', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1732', '1190', '0,1190,1732,', '葵青区', 117, '810117', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1733', '1190', '0,1190,1733,', '离岛区', 118, '810118', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1734', '3440', '0,1970,3440,1734,', '桦川县', 826, '230826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1735', '3282', '0,3282,1735,', '运城市', 800, '140800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1736', '1735', '0,3282,1735,1736,', '盐湖区', 802, '140802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1737', '3440', '0,1970,3440,1737,', '桦南县', 822, '230822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1738', '1739', '0,2147,1739,1738,', '玉树市', 2701, '632701', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1739', '2147', '0,2147,1739,', '玉树藏族自治州', 2700, '632700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('174', '891', '0,891,174,', '韶关市', 200, '440200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1740', '1723', '0,1786,1723,1740,', '方城县', 1322, '411322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1741', '1950', '0,2825,1950,1741,', '得荣县', 3338, '513338', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1742', '1720', '0,3083,1720,1742,', '同心县', 324, '640324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1743', '1723', '0,1786,1723,1743,', '南召县', 1321, '411321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1744', '1950', '0,2825,1950,1744,', '稻城县', 3337, '513337', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1745', '1720', '0,3083,1720,1745,', '盐池县', 323, '640323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1746', '2243', '0,2243,1746,', '怀柔区', 116, '110116', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1747', '1735', '0,3282,1735,1747,', '垣曲县', 827, '140827', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1748', '1723', '0,1786,1723,1748,', '唐河县', 1328, '411328', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1749', '2825', '0,2825,1749,', '资阳市', 2000, '512000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('175', '201', '0,418,201,175,', '汉阴县', 921, '610921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1750', '1950', '0,2825,1950,1750,', '石渠县', 3332, '513332', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1751', '2243', '0,2243,1751,', '平谷区', 117, '110117', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1752', '1735', '0,3282,1735,1752,', '夏县', 828, '140828', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1753', '1723', '0,1786,1723,1753,', '社旗县', 1327, '411327', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1754', '1950', '0,2825,1950,1754,', '白玉县', 3331, '513331', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1755', '2243', '0,2243,1755,', '昌平区', 114, '110114', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1756', '1735', '0,3282,1735,1756,', '平陆县', 829, '140829', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1757', '1950', '0,2825,1950,1757,', '德格县', 3330, '513330', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1758', '2243', '0,2243,1758,', '大兴区', 115, '110115', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1759', '1723', '0,1786,1723,1759,', '新野县', 1329, '411329', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('176', '131', '0,431,131,176,', '温泉县', 2723, '652723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1760', '1190', '0,1190,1760,', '中西区', 101, '810101', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1761', '2243', '0,2243,1761,', '通州区', 112, '110112', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1762', '1723', '0,1786,1723,1762,', '镇平县', 1324, '411324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1763', '1950', '0,2825,1950,1763,', '乡城县', 3336, '513336', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1764', '1190', '0,1190,1764,', '湾仔区', 102, '810102', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1765', '2243', '0,2243,1765,', '顺义区', 113, '110113', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1766', '1723', '0,1786,1723,1766,', '西峡县', 1323, '411323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1767', '1950', '0,2825,1950,1767,', '巴塘县', 3335, '513335', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1768', '1190', '0,1190,1768,', '东区', 103, '810103', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1769', '1723', '0,1786,1723,1769,', '淅川县', 1326, '411326', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('177', '180', '0,986,180,177,', '临夏市', 2901, '622901', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1770', '1749', '0,2825,1749,1770,', '雁江区', 2002, '512002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1771', '1950', '0,2825,1950,1771,', '理塘县', 3334, '513334', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1772', '1190', '0,1190,1772,', '南区', 104, '810104', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1773', '2243', '0,2243,1773,', '房山区', 111, '110111', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1774', '1723', '0,1786,1723,1774,', '内乡县', 1325, '411325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1775', '1950', '0,2825,1950,1775,', '色达县', 3333, '513333', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1776', '1190', '0,1190,1776,', '油尖旺区', 105, '810105', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1777', '431', '0,431,1777,', '昌吉回族自治州', 2300, '652300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1778', '1777', '0,431,1777,1778,', '昌吉市', 2301, '652301', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1779', '1806', '0,2747,1806,1779,', '大冶市', 281, '420281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('178', '179', '0,2129,179,178,', '渝水区', 502, '360502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1780', '1777', '0,431,1777,1780,', '阜康市', 2302, '652302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1781', '2243', '0,2243,1781,', '密云区', 118, '110118', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1782', '2243', '0,2243,1782,', '延庆区', 119, '110119', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1783', '1785', '0,1941,1785,1783,', '福绵区', 903, '450903', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1784', '1785', '0,1941,1785,1784,', '玉州区', 902, '450902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1785', '1941', '0,1941,1785,', '玉林市', 900, '450900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1786', '1', '0,1786,', '河南省', 0, '410000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1787', '1950', '0,2825,1950,1787,', '新龙县', 3329, '513329', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1788', '1723', '0,1786,1723,1788,', '桐柏县', 1330, '411330', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1789', '1950', '0,2825,1950,1789,', '甘孜县', 3328, '513328', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('179', '2129', '0,2129,179,', '新余市', 500, '360500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1790', '1735', '0,3282,1735,1790,', '临猗县', 821, '140821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1791', '1950', '0,2825,1950,1791,', '炉霍县', 3327, '513327', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1792', '1735', '0,3282,1735,1792,', '万荣县', 822, '140822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1793', '1950', '0,2825,1950,1793,', '道孚县', 3326, '513326', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1794', '1735', '0,3282,1735,1794,', '闻喜县', 823, '140823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1795', '1735', '0,3282,1735,1795,', '稷山县', 824, '140824', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1796', '1735', '0,3282,1735,1796,', '新绛县', 825, '140825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1797', '1735', '0,3282,1735,1797,', '绛县', 826, '140826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1798', '1909', '0,1786,1909,1798,', '孟州市', 883, '410883', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1799', '1739', '0,2147,1739,1799,', '称多县', 2723, '632723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('18', '95', '0,3015,95,18,', '诸暨市', 681, '330681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('180', '986', '0,986,180,', '临夏回族自治州', 2900, '622900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1800', '1739', '0,2147,1739,1800,', '杂多县', 2722, '632722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1801', '1739', '0,2147,1739,1801,', '曲麻莱县', 2726, '632726', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1802', '1739', '0,2147,1739,1802,', '囊谦县', 2725, '632725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1803', '1739', '0,2147,1739,1803,', '治多县', 2724, '632724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1804', '1806', '0,2747,1806,1804,', '西塞山区', 203, '420203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1805', '1806', '0,2747,1806,1805,', '黄石港区', 202, '420202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1806', '2747', '0,2747,1806,', '黄石市', 200, '420200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1807', '1806', '0,2747,1806,1807,', '铁山区', 205, '420205', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1808', '1806', '0,2747,1806,1808,', '下陆区', 204, '420204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1809', '1881', '0,2138,1881,1809,', '盱眙县', 830, '320830', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('181', '155', '0,2825,155,181,', '井研县', 1124, '511124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1810', '1881', '0,2138,1881,1810,', '金湖县', 831, '320831', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1811', '1749', '0,2825,1749,1811,', '乐至县', 2022, '512022', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1812', '1749', '0,2825,1749,1812,', '安岳县', 2021, '512021', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1813', '1777', '0,431,1777,1813,', '呼图壁县', 2323, '652323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1814', '1777', '0,431,1777,1814,', '玛纳斯县', 2324, '652324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1815', '1777', '0,431,1777,1815,', '奇台县', 2325, '652325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1816', '1777', '0,431,1777,1816,', '吉木萨尔县', 2327, '652327', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1817', '1777', '0,431,1777,1817,', '木垒哈萨克自治县', 2328, '652328', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1818', '1819', '0,1561,1819,1818,', '古城区', 702, '530702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1819', '1561', '0,1561,1819,', '丽江市', 700, '530700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('182', '155', '0,2825,155,182,', '犍为县', 1123, '511123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1820', '1821', '0,2129,1821,1820,', '袁州区', 902, '360902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1821', '2129', '0,2129,1821,', '宜春市', 900, '360900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1822', '1806', '0,2747,1806,1822,', '阳新县', 222, '420222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1823', '1881', '0,2138,1881,1823,', '清江浦区', 812, '320812', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1824', '1881', '0,2138,1881,1824,', '洪泽区', 813, '320813', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1825', '1855', '0,5,1855,1825,', '凤台县', 421, '340421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1826', '1855', '0,5,1855,1826,', '寿县', 422, '340422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1827', '1831', '0,996,1831,1827,', '浑江区', 602, '220602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1828', '1831', '0,996,1831,1828,', '江源区', 605, '220605', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1829', '1720', '0,3083,1720,1829,', '青铜峡市', 381, '640381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('183', '202', '0,996,202,183,', '丰满区', 211, '220211', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1830', '1821', '0,2129,1821,1830,', '铜鼓县', 926, '360926', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1831', '996', '0,996,1831,', '白山市', 600, '220600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1832', '3440', '0,1970,3440,1832,', '抚远市', 883, '230883', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1833', '3440', '0,1970,3440,1833,', '富锦市', 882, '230882', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1834', '2147', '0,2147,1834,', '西宁市', 100, '630100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1835', '3440', '0,1970,3440,1835,', '同江市', 881, '230881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1836', '1881', '0,2138,1881,1836,', '涟水县', 826, '320826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1837', '2139', '0,782,2139,1837,', '三河市', 1082, '131082', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1838', '1821', '0,2129,1821,1838,', '宜丰县', 924, '360924', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1839', '2139', '0,782,2139,1839,', '霸州市', 1081, '131081', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('184', '174', '0,891,174,184,', '新丰县', 233, '440233', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1840', '1821', '0,2129,1821,1840,', '靖安县', 925, '360925', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1841', '1821', '0,2129,1821,1841,', '万载县', 922, '360922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1842', '1821', '0,2129,1821,1842,', '上高县', 923, '360923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1843', '1821', '0,2129,1821,1843,', '奉新县', 921, '360921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1844', '1855', '0,5,1855,1844,', '八公山区', 405, '340405', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1845', '1953', '0,2747,1953,1845,', '建始县', 2822, '422822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1846', '1855', '0,5,1855,1846,', '潘集区', 406, '340406', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1847', '1953', '0,2747,1953,1847,', '巴东县', 2823, '422823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1848', '1855', '0,5,1855,1848,', '田家庵区', 403, '340403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1849', '1855', '0,5,1855,1849,', '谢家集区', 404, '340404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('185', '174', '0,891,174,185,', '乳源瑶族自治县', 232, '440232', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1850', '1953', '0,2747,1953,1850,', '宣恩县', 2825, '422825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1851', '1953', '0,2747,1953,1851,', '咸丰县', 2826, '422826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1852', '1855', '0,5,1855,1852,', '大通区', 402, '340402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1853', '1953', '0,2747,1953,1853,', '来凤县', 2827, '422827', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1854', '1953', '0,2747,1953,1854,', '鹤峰县', 2828, '422828', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1855', '5', '0,5,1855,', '淮南市', 400, '340400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1856', '1988', '0,1941,1988,1856,', '合山市', 1381, '451381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1857', '1858', '0,431,1858,1857,', '伊州区', 502, '650502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1858', '431', '0,431,1858,', '哈密市', 500, '650500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1859', '1860', '0,782,1860,1859,', '竞秀区', 602, '130602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('186', '1443', '0,5,1443,186,', '怀宁县', 822, '340822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1860', '782', '0,782,1860,', '保定市', 600, '130600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1861', '1860', '0,782,1860,1861,', '莲池区', 606, '130606', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1862', '1831', '0,996,1831,1862,', '抚松县', 621, '220621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1863', '1860', '0,782,1860,1863,', '满城区', 607, '130607', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1864', '1831', '0,996,1831,1864,', '长白朝鲜族自治县', 623, '220623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1865', '1831', '0,996,1831,1865,', '靖宇县', 622, '220622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1866', '1860', '0,782,1860,1866,', '清苑区', 608, '130608', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1867', '1879', '0,2592,1879,1867,', '白云鄂博矿区', 206, '150206', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1868', '1860', '0,782,1860,1868,', '徐水区', 609, '130609', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1869', '1879', '0,2592,1879,1869,', '九原区', 207, '150207', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('187', '1443', '0,5,1443,187,', '望江县', 827, '340827', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1870', '1908', '0,5,1908,1870,', '青阳县', 1723, '341723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1871', '1735', '0,3282,1735,1871,', '永济市', 881, '140881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1872', '1879', '0,2592,1879,1872,', '青山区', 204, '150204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1873', '1881', '0,2138,1881,1873,', '淮安区', 803, '320803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1874', '1735', '0,3282,1735,1874,', '河津市', 882, '140882', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1875', '1879', '0,2592,1879,1875,', '石拐区', 205, '150205', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1876', '1881', '0,2138,1881,1876,', '淮阴区', 804, '320804', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1877', '1879', '0,2592,1879,1877,', '东河区', 202, '150202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1878', '1879', '0,2592,1879,1878,', '昆都仑区', 203, '150203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1879', '2592', '0,2592,1879,', '包头市', 200, '150200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('188', '159', '0,2747,159,188,', '谷城县', 625, '420625', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1880', '2613', '0,2825,2613,1880,', '长宁县', 1524, '511524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1881', '2138', '0,2138,1881,', '淮安市', 800, '320800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1882', '2613', '0,2825,2613,1882,', '高县', 1525, '511525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1883', '2613', '0,2825,2613,1883,', '江安县', 1523, '511523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1884', '1908', '0,5,1908,1884,', '石台县', 1722, '341722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1885', '2613', '0,2825,2613,1885,', '兴文县', 1528, '511528', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1886', '1908', '0,5,1908,1886,', '东至县', 1721, '341721', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1887', '2613', '0,2825,2613,1887,', '屏山县', 1529, '511529', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1888', '2613', '0,2825,2613,1888,', '珙县', 1526, '511526', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1889', '2613', '0,2825,2613,1889,', '筠连县', 1527, '511527', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('189', '1443', '0,5,1443,189,', '岳西县', 828, '340828', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1890', '1924', '0,121,1924,1890,', '常宁市', 482, '430482', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1891', '1924', '0,121,1924,1891,', '耒阳市', 481, '430481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1892', '1858', '0,431,1858,1892,', '伊吾县', 522, '650522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1893', '1858', '0,431,1858,1893,', '巴里坤哈萨克自治县', 521, '650521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1894', '1860', '0,782,1860,1894,', '阜平县', 624, '130624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1895', '1898', '0,2900,1898,1895,', '沾化区', 1603, '371603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1896', '1860', '0,782,1860,1896,', '涞水县', 623, '130623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1897', '1860', '0,782,1860,1897,', '高阳县', 628, '130628', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1898', '2900', '0,2900,1898,', '滨州市', 1600, '371600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1899', '1860', '0,782,1860,1899,', '容城县', 629, '130629', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('19', '3', '0,2747,3,19,', '黄州区', 1102, '421102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('190', '159', '0,2747,159,190,', '南漳县', 624, '420624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1900', '1860', '0,782,1860,1900,', '定兴县', 626, '130626', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1901', '1898', '0,2900,1898,1901,', '滨城区', 1602, '371602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1902', '1860', '0,782,1860,1902,', '唐县', 627, '130627', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1903', '1908', '0,5,1908,1903,', '贵池区', 1702, '341702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1904', '1879', '0,2592,1879,1904,', '固阳县', 222, '150222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1905', '1879', '0,2592,1879,1905,', '达尔罕茂明安联合旗', 223, '150223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1906', '1909', '0,1786,1909,1906,', '沁阳市', 882, '410882', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1907', '1879', '0,2592,1879,1907,', '土默特右旗', 221, '150221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1908', '5', '0,5,1908,', '池州市', 1700, '341700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1909', '1786', '0,1786,1909,', '焦作市', 800, '410800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('191', '1443', '0,5,1443,191,', '太湖县', 825, '340825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1910', '1909', '0,1786,1909,1910,', '解放区', 802, '410802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1911', '2900', '0,2900,1911,', '淄博市', 300, '370300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1912', '1924', '0,121,1924,1912,', '南岳区', 412, '430412', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1913', '1911', '0,2900,1911,1913,', '临淄区', 305, '370305', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1914', '1911', '0,2900,1911,1914,', '周村区', 306, '370306', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1915', '1909', '0,1786,1909,1915,', '马村区', 804, '410804', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1916', '1911', '0,2900,1911,1916,', '淄川区', 302, '370302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1917', '1909', '0,1786,1909,1917,', '中站区', 803, '410803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1918', '1911', '0,2900,1911,1918,', '张店区', 303, '370303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1919', '1911', '0,2900,1911,1919,', '博山区', 304, '370304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('192', '1443', '0,5,1443,192,', '宿松县', 826, '340826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1920', '1831', '0,996,1831,1920,', '临江市', 681, '220681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1921', '1735', '0,3282,1735,1921,', '芮城县', 830, '140830', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1922', '1909', '0,1786,1909,1922,', '山阳区', 811, '410811', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1923', '1105', '0,1105,1923,', '南平市', 700, '350700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1924', '121', '0,121,1924,', '衡阳市', 400, '430400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1925', '1923', '0,1105,1923,1925,', '延平区', 702, '350702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1926', '1923', '0,1105,1923,1926,', '建阳区', 703, '350703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1927', '1924', '0,121,1924,1927,', '雁峰区', 406, '430406', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1928', '1898', '0,2900,1898,1928,', '博兴县', 1625, '371625', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1929', '1924', '0,121,1924,1929,', '珠晖区', 405, '430405', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('193', '78', '0,267,78,193,', '大石桥市', 882, '210882', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1930', '1924', '0,121,1924,1930,', '蒸湘区', 408, '430408', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1931', '1924', '0,121,1924,1931,', '石鼓区', 407, '430407', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1932', '1898', '0,2900,1898,1932,', '阳信县', 1622, '371622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1933', '1898', '0,2900,1898,1933,', '惠民县', 1621, '371621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1934', '1898', '0,2900,1898,1934,', '无棣县', 1623, '371623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1935', '1821', '0,2129,1821,1935,', '樟树市', 982, '360982', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1936', '1821', '0,2129,1821,1936,', '高安市', 983, '360983', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1937', '1821', '0,2129,1821,1937,', '丰城市', 981, '360981', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1938', '1973', '0,986,1973,1938,', '临泽县', 723, '620723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1939', '1973', '0,986,1973,1939,', '高台县', 724, '620724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('194', '78', '0,267,78,194,', '盖州市', 881, '210881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1940', '1973', '0,986,1973,1940,', '山丹县', 725, '620725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1941', '1', '0,1941,', '广西壮族自治区', 0, '450000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1942', '1973', '0,986,1973,1942,', '肃南裕固族自治县', 721, '620721', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1943', '1973', '0,986,1973,1943,', '民乐县', 722, '620722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1944', '1909', '0,1786,1909,1944,', '博爱县', 822, '410822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1945', '1909', '0,1786,1909,1945,', '修武县', 821, '410821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1946', '1911', '0,2900,1911,1946,', '桓台县', 321, '370321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1947', '1911', '0,2900,1911,1947,', '高青县', 322, '370322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1948', '1909', '0,1786,1909,1948,', '武陟县', 823, '410823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1949', '1950', '0,2825,1950,1949,', '康定市', 3301, '513301', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('195', '159', '0,2747,159,195,', '保康县', 626, '420626', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1950', '2825', '0,2825,1950,', '甘孜藏族自治州', 3300, '513300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1951', '1911', '0,2900,1911,1951,', '沂源县', 323, '370323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1952', '1909', '0,1786,1909,1952,', '温县', 825, '410825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1953', '2747', '0,2747,1953,', '恩施土家族苗族自治州', 2800, '422800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1954', '1953', '0,2747,1953,1954,', '恩施市', 2801, '422801', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1955', '1953', '0,2747,1953,1955,', '利川市', 2802, '422802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1956', '267', '0,267,1956,', '抚顺市', 400, '210400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1957', '1956', '0,267,1956,1957,', '望花区', 404, '210404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1958', '1956', '0,267,1956,1958,', '东洲区', 403, '210403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1959', '1956', '0,267,1956,1959,', '新抚区', 402, '210402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('196', '155', '0,2825,155,196,', '金口河区', 1113, '511113', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1960', '1923', '0,1105,1923,1960,', '顺昌县', 721, '350721', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1961', '1923', '0,1105,1923,1961,', '浦城县', 722, '350722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1962', '1923', '0,1105,1923,1962,', '光泽县', 723, '350723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1963', '1924', '0,121,1924,1963,', '衡南县', 422, '430422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1964', '1923', '0,1105,1923,1964,', '松溪县', 724, '350724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1965', '1924', '0,121,1924,1965,', '衡阳县', 421, '430421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1966', '1923', '0,1105,1923,1966,', '政和县', 725, '350725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1967', '1924', '0,121,1924,1967,', '衡东县', 424, '430424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1968', '1924', '0,121,1924,1968,', '衡山县', 423, '430423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1969', '1924', '0,121,1924,1969,', '祁东县', 426, '430426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('197', '174', '0,891,174,197,', '翁源县', 229, '440229', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1970', '1', '0,1970,', '黑龙江省', 0, '230000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1971', '1956', '0,267,1956,1971,', '顺城区', 411, '210411', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1972', '1973', '0,986,1973,1972,', '甘州区', 702, '620702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1973', '986', '0,986,1973,', '张掖市', 700, '620700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1974', '2025', '0,3360,2025,1974,', '西港区', 520, '830520', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1975', '2025', '0,3360,2025,1975,', '七股区', 521, '830521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1976', '2025', '0,3360,2025,1976,', '关庙区', 515, '830515', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1977', '2025', '0,3360,2025,1977,', '龙崎区', 516, '830516', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1978', '2025', '0,3360,2025,1978,', '官田区', 517, '830517', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1979', '2025', '0,3360,2025,1979,', '麻豆区', 518, '830518', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('198', '155', '0,2825,155,198,', '沙湾区', 1111, '511111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1980', '2025', '0,3360,2025,1980,', '玉井区', 511, '830511', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1981', '2025', '0,3360,2025,1981,', '楠西区', 512, '830512', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1982', '2025', '0,3360,2025,1982,', '南化区', 513, '830513', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1983', '2025', '0,3360,2025,1983,', '仁德区', 514, '830514', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1984', '1956', '0,267,1956,1984,', '新宾满族自治县', 422, '210422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1985', '1988', '0,1941,1988,1985,', '兴宾区', 1302, '451302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1986', '1956', '0,267,1956,1986,', '抚顺县', 421, '210421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1987', '2025', '0,3360,2025,1987,', '佳里区', 519, '830519', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1988', '1941', '0,1941,1988,', '来宾市', 1300, '451300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1989', '1956', '0,267,1956,1989,', '清原满族自治县', 423, '210423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('199', '155', '0,2825,155,199,', '五通桥区', 1112, '511112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1990', '3219', '0,1105,3219,1990,', '云霄县', 622, '350622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1991', '3219', '0,1105,3219,1991,', '漳浦县', 623, '350623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1992', '986', '0,986,1992,', '定西市', 1100, '621100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1993', '2003', '0,996,2003,1993,', '和龙市', 2406, '222406', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1994', '3219', '0,1105,3219,1994,', '诏安县', 624, '350624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1995', '3200', '0,2900,3200,1995,', '黄岛区', 211, '370211', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1996', '3219', '0,1105,3219,1996,', '长泰县', 625, '350625', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1997', '3200', '0,2900,3200,1997,', '崂山区', 212, '370212', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1998', '1992', '0,986,1992,1998,', '安定区', 1102, '621102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('1999', '3219', '0,1105,3219,1999,', '东山县', 626, '350626', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2', '95', '0,3015,95,2,', '嵊州市', 683, '330683', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('20', '2592', '0,2592,20,', '鄂尔多斯市', 600, '150600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('200', '201', '0,418,201,200,', '汉滨区', 902, '610902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2000', '3219', '0,1105,3219,2000,', '南靖县', 627, '350627', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2001', '3219', '0,1105,3219,2001,', '平和县', 628, '350628', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2002', '3219', '0,1105,3219,2002,', '华安县', 629, '350629', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2003', '996', '0,996,2003,', '延边朝鲜族自治州', 2400, '222400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2004', '2064', '0,1561,2064,2004,', '绿春县', 2531, '532531', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2005', '2174', '0,431,2174,2005,', '特克斯县', 4027, '654027', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2006', '2003', '0,996,2003,2006,', '延吉市', 2401, '222401', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2007', '2064', '0,1561,2064,2007,', '金平苗族瑶族傣族自治县', 2530, '532530', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2008', '2174', '0,431,2174,2008,', '尼勒克县', 4028, '654028', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2009', '2025', '0,3360,2025,2009,', '左镇区', 510, '830510', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('201', '418', '0,418,201,', '安康市', 900, '610900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2010', '2003', '0,996,2003,2010,', '珲春市', 2404, '222404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2011', '3200', '0,2900,3200,2011,', '李沧区', 213, '370213', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2012', '2003', '0,996,2003,2012,', '龙井市', 2405, '222405', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2013', '3200', '0,2900,3200,2013,', '城阳区', 214, '370214', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2014', '2003', '0,996,2003,2014,', '图们市', 2402, '222402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2015', '3200', '0,2900,3200,2015,', '即墨区', 215, '370215', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2016', '2003', '0,996,2003,2016,', '敦化市', 2403, '222403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2017', '2064', '0,1561,2064,2017,', '元阳县', 2528, '532528', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2018', '2025', '0,3360,2025,2018,', '北区', 504, '830504', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2019', '2064', '0,1561,2064,2019,', '泸西县', 2527, '532527', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('202', '996', '0,996,202,', '吉林市', 200, '220200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2020', '2025', '0,3360,2025,2020,', '安平区', 505, '830505', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2021', '2025', '0,3360,2025,2021,', '安南区', 506, '830506', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2022', '2064', '0,1561,2064,2022,', '石屏县', 2525, '532525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2023', '2025', '0,3360,2025,2023,', '永康区', 507, '830507', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2024', '2064', '0,1561,2064,2024,', '建水县', 2524, '532524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2025', '3360', '0,3360,2025,', '台南市', 500, '830500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2026', '2064', '0,1561,2064,2026,', '屏边苗族自治县', 2523, '532523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2027', '2025', '0,3360,2025,2027,', '中西区', 501, '830501', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2028', '2025', '0,3360,2025,2028,', '东区', 502, '830502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2029', '2025', '0,3360,2025,2029,', '南区', 503, '830503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('203', '174', '0,891,174,203,', '仁化县', 224, '440224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2030', '2025', '0,3360,2025,2030,', '归仁区', 508, '830508', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2031', '2025', '0,3360,2025,2031,', '新化区', 509, '830509', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2032', '2064', '0,1561,2064,2032,', '红河县', 2529, '532529', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2033', '2167', '0,2559,2167,2033,', '墨竹工卡县', 127, '540127', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2034', '2167', '0,2559,2167,2034,', '当雄县', 122, '540122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2035', '2167', '0,2559,2167,2035,', '尼木县', 123, '540123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2036', '2167', '0,2559,2167,2036,', '曲水县', 124, '540124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2037', '1988', '0,1941,1988,2037,', '金秀瑶族自治县', 1324, '451324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2038', '1988', '0,1941,1988,2038,', '武宣县', 1323, '451323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2039', '1988', '0,1941,1988,2039,', '象州县', 1322, '451322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('204', '202', '0,996,202,204,', '龙潭区', 203, '220203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2040', '1988', '0,1941,1988,2040,', '忻城县', 1321, '451321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2041', '2356', '0,782,2356,2041,', '南宫市', 581, '130581', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2042', '2356', '0,782,2356,2042,', '沙河市', 582, '130582', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2043', '2110', '0,418,2110,2043,', '旬邑县', 429, '610429', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2044', '2180', '0,120,2180,2044,', '大方县', 521, '520521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2045', '2180', '0,120,2180,2045,', '黔西县', 522, '520522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2046', '2180', '0,120,2180,2046,', '金沙县', 523, '520523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2047', '2110', '0,418,2110,2047,', '长武县', 428, '610428', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2048', '2003', '0,996,2003,2048,', '安图县', 2426, '222426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2049', '2180', '0,120,2180,2049,', '织金县', 524, '520524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('205', '202', '0,996,202,205,', '昌邑区', 202, '220202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2050', '2110', '0,418,2110,2050,', '礼泉县', 425, '610425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2051', '2180', '0,120,2180,2051,', '纳雍县', 525, '520525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2052', '2110', '0,418,2110,2052,', '永寿县', 426, '610426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2053', '2003', '0,996,2003,2053,', '汪清县', 2424, '222424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2054', '2180', '0,120,2180,2054,', '威宁彝族回族苗族自治县', 526, '520526', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2055', '2110', '0,418,2110,2055,', '泾阳县', 423, '610423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2056', '2180', '0,120,2180,2056,', '赫章县', 527, '520527', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2057', '2110', '0,418,2110,2057,', '乾县', 424, '610424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2058', '2064', '0,1561,2064,2058,', '弥勒市', 2504, '532504', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2059', '2110', '0,418,2110,2059,', '淳化县', 430, '610430', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('206', '174', '0,891,174,206,', '始兴县', 222, '440222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2060', '2064', '0,1561,2064,2060,', '蒙自市', 2503, '532503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2061', '2110', '0,418,2110,2061,', '武功县', 431, '610431', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2062', '2064', '0,1561,2064,2062,', '开远市', 2502, '532502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2063', '2064', '0,1561,2064,2063,', '个旧市', 2501, '532501', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2064', '1561', '0,1561,2064,', '红河哈尼族彝族自治州', 2500, '532500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2065', '2167', '0,2559,2167,2065,', '林周县', 121, '540121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2066', '2110', '0,418,2110,2066,', '三原县', 422, '610422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2067', '2077', '0,891,2077,2067,', '高明区', 608, '440608', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2068', '2077', '0,891,2077,2068,', '三水区', 607, '440607', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2069', '2077', '0,891,2077,2069,', '顺德区', 606, '440606', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('207', '202', '0,996,202,207,', '船营区', 204, '220204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2070', '2356', '0,782,2356,2070,', '邢台县', 521, '130521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2071', '3196', '0,2900,3196,2071,', '临清市', 1581, '371581', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2072', '2077', '0,891,2077,2072,', '南海区', 605, '440605', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2073', '2356', '0,782,2356,2073,', '临城县', 522, '130522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2074', '2077', '0,891,2077,2074,', '禅城区', 604, '440604', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2075', '2356', '0,782,2356,2075,', '隆尧县', 525, '130525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2076', '2356', '0,782,2356,2076,', '任县', 526, '130526', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2077', '891', '0,891,2077,', '佛山市', 600, '440600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2078', '2356', '0,782,2356,2078,', '内丘县', 523, '130523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2079', '2356', '0,782,2356,2079,', '柏乡县', 524, '130524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('208', '179', '0,2129,179,208,', '分宜县', 521, '360521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2080', '2356', '0,782,2356,2080,', '巨鹿县', 529, '130529', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2081', '2110', '0,418,2110,2081,', '杨陵区', 403, '610403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2082', '2110', '0,418,2110,2082,', '渭城区', 404, '610404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2083', '2356', '0,782,2356,2083,', '南和县', 527, '130527', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2084', '2356', '0,782,2356,2084,', '宁晋县', 528, '130528', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2085', '2110', '0,418,2110,2085,', '秦都区', 402, '610402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2086', '2382', '0,2592,2382,2086,', '武川县', 125, '150125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2087', '2382', '0,2592,2382,2087,', '和林格尔县', 123, '150123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2088', '2382', '0,2592,2382,2088,', '清水河县', 124, '150124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2089', '2092', '0,2825,2092,2089,', '广安区', 1602, '511602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('209', '1443', '0,5,1443,209,', '宜秀区', 811, '340811', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2090', '2382', '0,2592,2382,2090,', '土默特左旗', 121, '150121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2091', '2382', '0,2592,2382,2091,', '托克托县', 122, '150122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2092', '2825', '0,2825,2092,', '广安市', 1600, '511600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2093', '2092', '0,2825,2092,2093,', '前锋区', 1603, '511603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2094', '2184', '0,1941,2184,2094,', '桂平市', 881, '450881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2095', '2108', '0,2901,2108,2095,', '崖州区', 205, '460205', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2096', '2108', '0,2901,2108,2096,', '天涯区', 204, '460204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2097', '2356', '0,782,2356,2097,', '平乡县', 532, '130532', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2098', '2356', '0,782,2356,2098,', '威县', 533, '130533', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2099', '3200', '0,2900,3200,2099,', '平度市', 283, '370283', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('21', '46', '0,5,46,21,', '砀山县', 1321, '341321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('210', '211', '0,891,211,210,', '城区', 1502, '441502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2100', '2356', '0,782,2356,2100,', '新河县', 530, '130530', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2101', '2119', '0,2825,2119,2101,', '沿滩区', 311, '510311', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2102', '2356', '0,782,2356,2102,', '广宗县', 531, '130531', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2103', '3200', '0,2900,3200,2103,', '莱西市', 285, '370285', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2104', '2356', '0,782,2356,2104,', '清河县', 534, '130534', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2105', '2356', '0,782,2356,2105,', '临西县', 535, '130535', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2106', '2108', '0,2901,2108,2106,', '吉阳区', 203, '460203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2107', '2108', '0,2901,2108,2107,', '海棠区', 202, '460202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2108', '2901', '0,2901,2108,', '三亚市', 200, '460200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2109', '2025', '0,3360,2025,2109,', '安定区', 537, '830537', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('211', '891', '0,891,211,', '汕尾市', 1500, '441500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2110', '418', '0,418,2110,', '咸阳市', 400, '610400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2111', '2025', '0,3360,2025,2111,', '善化区', 533, '830533', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2112', '2025', '0,3360,2025,2112,', '大内区', 534, '830534', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2113', '2025', '0,3360,2025,2113,', '山上区', 535, '830535', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2114', '2064', '0,1561,2064,2114,', '河口瑶族自治县', 2532, '532532', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2115', '2025', '0,3360,2025,2115,', '新市区', 536, '830536', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2116', '2119', '0,2825,2119,2116,', '自流井区', 302, '510302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2117', '2119', '0,2825,2119,2117,', '大安区', 304, '510304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2118', '2119', '0,2825,2119,2118,', '贡井区', 303, '510303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2119', '2825', '0,2825,2119,', '自贡市', 300, '510300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('212', '420', '0,2825,420,212,', '平武县', 727, '510727', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2120', '3219', '0,1105,3219,2120,', '龙海市', 681, '350681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2121', '2025', '0,3360,2025,2121,', '下营区', 530, '830530', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2122', '2025', '0,3360,2025,2122,', '柳营区', 531, '830531', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2123', '2025', '0,3360,2025,2123,', '盐水区', 532, '830532', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2124', '2025', '0,3360,2025,2124,', '后壁区', 526, '830526', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2125', '2025', '0,3360,2025,2125,', '白河区', 527, '830527', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2126', '2025', '0,3360,2025,2126,', '东山区', 528, '830528', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2127', '2025', '0,3360,2025,2127,', '六甲区', 529, '830529', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2128', '2025', '0,3360,2025,2128,', '将军区', 522, '830522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2129', '1', '0,2129,', '江西省', 0, '360000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('213', '420', '0,2825,420,213,', '三台县', 722, '510722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2130', '2025', '0,3360,2025,2130,', '学甲区', 523, '830523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2131', '2025', '0,3360,2025,2131,', '北门区', 524, '830524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2132', '2025', '0,3360,2025,2132,', '新营区', 525, '830525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2133', '2092', '0,2825,2092,2133,', '邻水县', 1623, '511623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2134', '2092', '0,2825,2092,2134,', '岳池县', 1621, '511621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2135', '3200', '0,2900,3200,2135,', '胶州市', 281, '370281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2136', '2092', '0,2825,2092,2136,', '武胜县', 1622, '511622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2137', '2139', '0,782,2139,2137,', '安次区', 1002, '131002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2138', '1', '0,2138,', '江苏省', 0, '320000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2139', '782', '0,782,2139,', '廊坊市', 1000, '131000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('214', '420', '0,2825,420,214,', '盐亭县', 723, '510723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2140', '2139', '0,782,2139,2140,', '广阳区', 1003, '131003', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2141', '891', '0,891,2141,', '东莞市', 1900, '441900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2142', '2157', '0,2138,2157,2142,', '泗阳县', 1323, '321323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2143', '2157', '0,2138,2157,2143,', '泗洪县', 1324, '321324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2144', '2157', '0,2138,2157,2144,', '沭阳县', 1322, '321322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2145', '1719', '0,3015,1719,2145,', '慈溪市', 282, '330282', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2146', '1719', '0,3015,1719,2146,', '余姚市', 281, '330281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2147', '1', '0,2147,', '青海省', 0, '630000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2148', '2139', '0,782,2139,2148,', '香河县', 1024, '131024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2149', '2139', '0,782,2139,2149,', '永清县', 1023, '131023', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('215', '420', '0,2825,420,215,', '北川羌族自治县', 726, '510726', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2150', '2139', '0,782,2139,2150,', '固安县', 1022, '131022', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2151', '2139', '0,782,2139,2151,', '大厂回族自治县', 1028, '131028', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2152', '2139', '0,782,2139,2152,', '文安县', 1026, '131026', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2153', '2139', '0,782,2139,2153,', '大城县', 1025, '131025', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2154', '3062', '0,1786,3062,2154,', '义马市', 1281, '411281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2155', '2157', '0,2138,2157,2155,', '宿城区', 1302, '321302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2156', '3062', '0,1786,3062,2156,', '灵宝市', 1282, '411282', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2157', '2138', '0,2138,2157,', '宿迁市', 1300, '321300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2158', '1819', '0,1561,1819,2158,', '华坪县', 723, '530723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2159', '1819', '0,1561,1819,2159,', '宁蒗彝族自治县', 724, '530724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('216', '420', '0,2825,420,216,', '梓潼县', 725, '510725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2160', '1819', '0,1561,1819,2160,', '玉龙纳西族自治县', 721, '530721', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2161', '1819', '0,1561,1819,2161,', '永胜县', 722, '530722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2162', '2157', '0,2138,2157,2162,', '宿豫区', 1311, '321311', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2163', '2243', '0,2243,2163,', '朝阳区', 105, '110105', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2164', '2167', '0,2559,2167,2164,', '达孜区', 104, '540104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2165', '2243', '0,2243,2165,', '丰台区', 106, '110106', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2166', '2243', '0,2243,2166,', '东城区', 101, '110101', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2167', '2559', '0,2559,2167,', '拉萨市', 100, '540100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2168', '2243', '0,2243,2168,', '西城区', 102, '110102', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2169', '2167', '0,2559,2167,2169,', '城关区', 102, '540102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('217', '242', '0,120,242,217,', '罗甸县', 2728, '522728', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2170', '2167', '0,2559,2167,2170,', '堆龙德庆区', 103, '540103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2171', '2243', '0,2243,2171,', '门头沟区', 109, '110109', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2172', '2243', '0,2243,2172,', '石景山区', 107, '110107', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2173', '2243', '0,2243,2173,', '海淀区', 108, '110108', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2174', '431', '0,431,2174,', '伊犁哈萨克自治州', 4000, '654000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2175', '2174', '0,431,2174,2175,', '伊宁市', 4002, '654002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2176', '2174', '0,431,2174,2176,', '奎屯市', 4003, '654003', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2177', '2174', '0,431,2174,2177,', '霍尔果斯市', 4004, '654004', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2178', '3062', '0,1786,3062,2178,', '渑池县', 1221, '411221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2179', '3062', '0,1786,3062,2179,', '卢氏县', 1224, '411224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('218', '242', '0,120,242,218,', '长顺县', 2729, '522729', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2180', '120', '0,120,2180,', '毕节市', 500, '520500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2181', '2180', '0,120,2180,2181,', '七星关区', 502, '520502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2182', '2184', '0,1941,2184,2182,', '覃塘区', 804, '450804', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2183', '2184', '0,1941,2184,2183,', '港南区', 803, '450803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2184', '1941', '0,1941,2184,', '贵港市', 800, '450800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2185', '2184', '0,1941,2184,2185,', '港北区', 802, '450802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2186', '2189', '0,1970,2189,2186,', '茄子河区', 904, '230904', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2187', '2189', '0,1970,2189,2187,', '桃山区', 903, '230903', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2188', '2189', '0,1970,2189,2188,', '新兴区', 902, '230902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2189', '1970', '0,1970,2189,', '七台河市', 900, '230900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('219', '202', '0,996,202,219,', '永吉县', 221, '220221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2190', '1719', '0,3015,1719,2190,', '象山县', 225, '330225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2191', '1719', '0,3015,1719,2191,', '宁海县', 226, '330226', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2192', '2174', '0,431,2174,2192,', '伊宁县', 4021, '654021', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2193', '2174', '0,431,2174,2193,', '察布查尔锡伯自治县', 4022, '654022', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2194', '2174', '0,431,2174,2194,', '霍城县', 4023, '654023', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2195', '2174', '0,431,2174,2195,', '巩留县', 4024, '654024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2196', '2110', '0,418,2110,2196,', '兴平市', 481, '610481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2197', '2174', '0,431,2174,2197,', '新源县', 4025, '654025', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2198', '2110', '0,418,2110,2198,', '彬州市', 482, '610482', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2199', '2174', '0,431,2174,2199,', '昭苏县', 4026, '654026', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('22', '29', '0,2138,29,22,', '钟楼区', 404, '320404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('220', '242', '0,120,242,220,', '荔波县', 2722, '522722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2200', '1992', '0,986,1992,2200,', '岷县', 1126, '621126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2201', '1992', '0,986,1992,2201,', '渭源县', 1123, '621123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2202', '1992', '0,986,1992,2202,', '陇西县', 1122, '621122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2203', '1992', '0,986,1992,2203,', '漳县', 1125, '621125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2204', '1992', '0,986,1992,2204,', '临洮县', 1124, '621124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2205', '1992', '0,986,1992,2205,', '通渭县', 1121, '621121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2206', '1719', '0,3015,1719,2206,', '奉化区', 213, '330213', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2207', '1719', '0,3015,1719,2207,', '镇海区', 211, '330211', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2208', '1719', '0,3015,1719,2208,', '鄞州区', 212, '330212', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2209', '2184', '0,1941,2184,2209,', '平南县', 821, '450821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('221', '242', '0,120,242,221,', '贵定县', 2723, '522723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2210', '2189', '0,1970,2189,2210,', '勃利县', 921, '230921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2211', '2306', '0,121,2306,2211,', '临武县', 1025, '431025', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2212', '2825', '0,2825,2212,', '阿坝藏族羌族自治州', 3200, '513200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2213', '2306', '0,121,2306,2213,', '嘉禾县', 1024, '431024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2214', '2306', '0,121,2306,2214,', '桂东县', 1027, '431027', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2215', '2306', '0,121,2306,2215,', '汝城县', 1026, '431026', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2216', '2251', '0,3015,2251,2216,', '苍南县', 327, '330327', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2217', '2251', '0,3015,2251,2217,', '文成县', 328, '330328', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2218', '2306', '0,121,2306,2218,', '安仁县', 1028, '431028', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2219', '2251', '0,3015,2251,2219,', '泰顺县', 329, '330329', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('222', '242', '0,120,242,222,', '瓮安县', 2725, '522725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2220', '2212', '0,2825,2212,2220,', '马尔康市', 3201, '513201', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2221', '2251', '0,3015,2251,2221,', '永嘉县', 324, '330324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2222', '2251', '0,3015,2251,2222,', '平阳县', 326, '330326', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2223', '2298', '0,1786,2298,2223,', '民权县', 1421, '411421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2224', '2298', '0,1786,2298,2224,', '夏邑县', 1426, '411426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2225', '2298', '0,1786,2298,2225,', '宁陵县', 1423, '411423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2226', '2298', '0,1786,2298,2226,', '睢县', 1422, '411422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2227', '2298', '0,1786,2298,2227,', '虞城县', 1425, '411425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2228', '2298', '0,1786,2298,2228,', '柘城县', 1424, '411424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2229', '2340', '0,2747,2340,2229,', '丹江口市', 381, '420381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('223', '242', '0,120,242,223,', '独山县', 2726, '522726', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2230', '1786', '0,1786,2230,', '郑州市', 100, '410100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2231', '2306', '0,121,2306,2231,', '桂阳县', 1021, '431021', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2232', '2306', '0,121,2306,2232,', '永兴县', 1023, '431023', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2233', '2306', '0,121,2306,2233,', '宜章县', 1022, '431022', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2234', '2212', '0,2825,2212,2234,', '理县', 3222, '513222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2235', '2230', '0,1786,2230,2235,', '上街区', 106, '410106', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2236', '2212', '0,2825,2212,2236,', '汶川县', 3221, '513221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2237', '2230', '0,1786,2230,2237,', '惠济区', 108, '410108', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2238', '2251', '0,3015,2251,2238,', '洞头区', 305, '330305', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2239', '2230', '0,1786,2230,2239,', '二七区', 103, '410103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('224', '242', '0,120,242,224,', '平塘县', 2727, '522727', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2240', '2212', '0,2825,2212,2240,', '金川县', 3226, '513226', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2241', '2230', '0,1786,2230,2241,', '中原区', 102, '410102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2242', '2212', '0,2825,2212,2242,', '九寨沟县', 3225, '513225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2243', '1', '0,2243,', '北京市', 0, '110000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2244', '2230', '0,1786,2230,2244,', '金水区', 105, '410105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2245', '2212', '0,2825,2212,2245,', '松潘县', 3224, '513224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2246', '2230', '0,1786,2230,2246,', '管城回族区', 104, '410104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2247', '2212', '0,2825,2212,2247,', '茂县', 3223, '513223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2248', '2251', '0,3015,2251,2248,', '鹿城区', 302, '330302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2249', '2251', '0,3015,2251,2249,', '龙湾区', 303, '330303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('225', '242', '0,120,242,225,', '龙里县', 2730, '522730', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2250', '2251', '0,3015,2251,2250,', '瓯海区', 304, '330304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2251', '3015', '0,3015,2251,', '温州市', 300, '330300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2252', '3083', '0,3083,2252,', '石嘴山市', 200, '640200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2253', '2252', '0,3083,2252,2253,', '大武口区', 202, '640202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2254', '2252', '0,3083,2252,2254,', '惠农区', 205, '640205', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2255', '2354', '0,2825,2354,2255,', '崇州市', 184, '510184', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2256', '2354', '0,2825,2354,2256,', '邛崃市', 183, '510183', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2257', '2354', '0,2825,2354,2257,', '简阳市', 185, '510185', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2258', '2252', '0,3083,2252,2258,', '平罗县', 221, '640221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2259', '2354', '0,2825,2354,2259,', '彭州市', 182, '510182', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('226', '1420', '0,2129,1420,226,', '湖口县', 429, '360429', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2260', '2354', '0,2825,2354,2260,', '都江堰市', 181, '510181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2261', '2655', '0,2592,2655,2261,', '丰镇市', 981, '150981', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2262', '3282', '0,3282,2262,', '晋中市', 700, '140700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2263', '2230', '0,1786,2230,2263,', '中牟县', 122, '410122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2264', '2262', '0,3282,2262,2264,', '榆次区', 702, '140702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2265', '2377', '0,2138,2377,2265,', '东台市', 981, '320981', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2266', '2147', '0,2147,2266,', '果洛藏族自治州', 2600, '632600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2267', '2340', '0,2747,2340,2267,', '竹溪县', 324, '420324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2268', '2340', '0,2747,2340,2268,', '竹山县', 323, '420323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2269', '2340', '0,2747,2340,2269,', '郧西县', 322, '420322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('227', '1420', '0,2129,1420,227,', '都昌县', 428, '360428', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2270', '2340', '0,2747,2340,2270,', '房县', 325, '420325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2271', '2280', '0,996,2280,2271,', '宁江区', 702, '220702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2272', '2212', '0,2825,2212,2272,', '红原县', 3233, '513233', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2273', '2212', '0,2825,2212,2273,', '若尔盖县', 3232, '513232', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2274', '2212', '0,2825,2212,2274,', '阿坝县', 3231, '513231', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2275', '2212', '0,2825,2212,2275,', '壤塘县', 3230, '513230', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2276', '2655', '0,2592,2655,2276,', '四子王旗', 929, '150929', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2277', '2655', '0,2592,2655,2277,', '察哈尔右翼后旗', 928, '150928', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2278', '2655', '0,2592,2655,2278,', '察哈尔右翼中旗', 927, '150927', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2279', '2655', '0,2592,2655,2279,', '察哈尔右翼前旗', 926, '150926', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('228', '1420', '0,2129,1420,228,', '永修县', 425, '360425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2280', '996', '0,996,2280,', '松原市', 700, '220700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2281', '2655', '0,2592,2655,2281,', '凉城县', 925, '150925', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2282', '2655', '0,2592,2655,2282,', '兴和县', 924, '150924', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2283', '2655', '0,2592,2655,2283,', '商都县', 923, '150923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2284', '2655', '0,2592,2655,2284,', '化德县', 922, '150922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2285', '2655', '0,2592,2655,2285,', '卓资县', 921, '150921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2286', '2430', '0,5,2430,2286,', '宁国市', 1881, '341881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2287', '2212', '0,2825,2212,2287,', '黑水县', 3228, '513228', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2288', '2212', '0,2825,2212,2288,', '小金县', 3227, '513227', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2289', '2306', '0,121,2306,2289,', '苏仙区', 1003, '431003', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('229', '1420', '0,2129,1420,229,', '德安县', 426, '360426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2290', '2306', '0,121,2306,2290,', '北湖区', 1002, '431002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2291', '2266', '0,2147,2266,2291,', '达日县', 2624, '632624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2292', '2266', '0,2147,2266,2292,', '甘德县', 2623, '632623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2293', '2266', '0,2147,2266,2293,', '班玛县', 2622, '632622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2294', '2266', '0,2147,2266,2294,', '玛沁县', 2621, '632621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2295', '2266', '0,2147,2266,2295,', '玛多县', 2626, '632626', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2296', '2266', '0,2147,2266,2296,', '久治县', 2625, '632625', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2297', '2280', '0,996,2280,2297,', '乾安县', 723, '220723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2298', '1786', '0,1786,2298,', '商丘市', 1400, '411400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2299', '2298', '0,1786,2298,2299,', '睢阳区', 1403, '411403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('23', '46', '0,5,46,23,', '萧县', 1322, '341322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('230', '1420', '0,2129,1420,230,', '武宁县', 423, '360423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2300', '2298', '0,1786,2298,2300,', '梁园区', 1402, '411402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2301', '2280', '0,996,2280,2301,', '长岭县', 722, '220722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2302', '2280', '0,996,2280,2302,', '前郭尔罗斯蒙古族自治县', 721, '220721', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2303', '2460', '0,891,2460,2303,', '四会市', 1284, '441284', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2304', '1970', '0,1970,2304,', '大兴安岭地区', 2700, '232700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2305', '2304', '0,1970,2304,2305,', '漠河市', 2701, '232701', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2306', '121', '0,121,2306,', '郴州市', 1000, '431000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2307', '2948', '0,2825,2948,2307,', '仁寿县', 1421, '511421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2308', '2460', '0,891,2460,2308,', '德庆县', 1226, '441226', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2309', '2460', '0,891,2460,2309,', '封开县', 1225, '441225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('231', '1420', '0,2129,1420,231,', '修水县', 424, '360424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2310', '2460', '0,891,2460,2310,', '怀集县', 1224, '441224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2311', '2460', '0,891,2460,2311,', '广宁县', 1223, '441223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2312', '2887', '0,120,2887,2312,', '赤水市', 381, '520381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2313', '2887', '0,120,2887,2313,', '仁怀市', 382, '520382', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2314', '2348', '0,5,2348,2314,', '含山县', 522, '340522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2315', '2532', '0,121,2532,2315,', '武冈市', 581, '430581', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2316', '2348', '0,5,2348,2316,', '和县', 523, '340523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2317', '2348', '0,5,2348,2317,', '当涂县', 521, '340521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2318', '2320', '0,2900,2320,2318,', '定陶区', 1703, '371703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2319', '2320', '0,2900,2320,2319,', '牡丹区', 1702, '371702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('232', '279', '0,1941,279,232,', '岑溪市', 481, '450481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2320', '2900', '0,2900,2320,', '菏泽市', 1700, '371700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2321', '2377', '0,2138,2377,2321,', '射阳县', 924, '320924', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2322', '2377', '0,2138,2377,2322,', '建湖县', 925, '320925', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2323', '2377', '0,2138,2377,2323,', '滨海县', 922, '320922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2324', '2377', '0,2138,2377,2324,', '阜宁县', 923, '320923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2325', '2948', '0,2825,2948,2325,', '彭山区', 1403, '511403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2326', '2377', '0,2138,2377,2326,', '响水县', 921, '320921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2327', '2948', '0,2825,2948,2327,', '东坡区', 1402, '511402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2328', '2304', '0,1970,2304,2328,', '呼玛县', 2721, '232721', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2329', '2304', '0,1970,2304,2329,', '塔河县', 2722, '232722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('233', '211', '0,891,211,233,', '陆河县', 1523, '441523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2330', '2354', '0,2825,2354,2330,', '青白江区', 113, '510113', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2331', '2354', '0,2825,2354,2331,', '龙泉驿区', 112, '510112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2332', '2335', '0,2900,2335,2332,', '峄城区', 404, '370404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2333', '2335', '0,2900,2335,2333,', '台儿庄区', 405, '370405', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2334', '2335', '0,2900,2335,2334,', '山亭区', 406, '370406', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2335', '2900', '0,2900,2335,', '枣庄市', 400, '370400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2336', '2335', '0,2900,2335,2336,', '市中区', 402, '370402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2337', '2335', '0,2900,2335,2337,', '薛城区', 403, '370403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2338', '2348', '0,5,2348,2338,', '雨山区', 504, '340504', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2339', '2340', '0,2747,2340,2339,', '茅箭区', 302, '420302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('234', '211', '0,891,211,234,', '海丰县', 1521, '441521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2340', '2747', '0,2747,2340,', '十堰市', 300, '420300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2341', '2348', '0,5,2348,2341,', '花山区', 503, '340503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2342', '2348', '0,5,2348,2342,', '博望区', 506, '340506', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2343', '2340', '0,2747,2340,2343,', '郧阳区', 304, '420304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2344', '2340', '0,2747,2340,2344,', '张湾区', 303, '420303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2345', '2354', '0,2825,2354,2345,', '锦江区', 104, '510104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2346', '2354', '0,2825,2354,2346,', '金牛区', 106, '510106', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2347', '2354', '0,2825,2354,2347,', '青羊区', 105, '510105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2348', '5', '0,5,2348,', '马鞍山市', 500, '340500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2349', '2354', '0,2825,2354,2349,', '成华区', 108, '510108', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('235', '1420', '0,2129,1420,235,', '彭泽县', 430, '360430', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2350', '2354', '0,2825,2354,2350,', '武侯区', 107, '510107', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2351', '1105', '0,1105,2351,', '龙岩市', 800, '350800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2352', '2355', '0,431,2355,2352,', '高昌区', 402, '650402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2353', '2351', '0,1105,2351,2353,', '新罗区', 802, '350802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2354', '2825', '0,2825,2354,', '成都市', 100, '510100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2355', '431', '0,431,2355,', '吐鲁番市', 400, '650400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2356', '782', '0,782,2356,', '邢台市', 500, '130500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2357', '2351', '0,1105,2351,2357,', '永定区', 803, '350803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2358', '2356', '0,782,2356,2358,', '桥西区', 503, '130503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2359', '2320', '0,2900,2320,2359,', '郓城县', 1725, '371725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('236', '782', '0,782,236,', '石家庄市', 100, '130100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2360', '2320', '0,2900,2320,2360,', '巨野县', 1724, '371724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2361', '2356', '0,782,2356,2361,', '桥东区', 502, '130502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2362', '2320', '0,2900,2320,2362,', '鄄城县', 1726, '371726', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2363', '2320', '0,2900,2320,2363,', '曹县', 1721, '371721', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2364', '2320', '0,2900,2320,2364,', '成武县', 1723, '371723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2365', '2320', '0,2900,2320,2365,', '单县', 1722, '371722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2366', '2430', '0,5,2430,2366,', '旌德县', 1825, '341825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2367', '2430', '0,5,2430,2367,', '绩溪县', 1824, '341824', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2368', '2377', '0,2138,2377,2368,', '大丰区', 904, '320904', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2369', '2430', '0,5,2430,2369,', '泾县', 1823, '341823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('237', '236', '0,782,236,237,', '桥西区', 104, '130104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2370', '2262', '0,3282,2262,2370,', '介休市', 781, '140781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2371', '2430', '0,5,2430,2371,', '广德市', 1822, '341822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2372', '2382', '0,2592,2382,2372,', '赛罕区', 105, '150105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2373', '2377', '0,2138,2377,2373,', '亭湖区', 902, '320902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2374', '2377', '0,2138,2377,2374,', '盐都区', 903, '320903', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2375', '2320', '0,2900,2320,2375,', '东明县', 1728, '371728', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2376', '2382', '0,2592,2382,2376,', '回民区', 103, '150103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2377', '2138', '0,2138,2377,', '盐城市', 900, '320900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2378', '2382', '0,2592,2382,2378,', '玉泉区', 104, '150104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2379', '2948', '0,2825,2948,2379,', '青神县', 1425, '511425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('238', '236', '0,782,236,238,', '长安区', 102, '130102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2380', '2382', '0,2592,2382,2380,', '新城区', 102, '150102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2381', '2948', '0,2825,2948,2381,', '洪雅县', 1423, '511423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2382', '2592', '0,2592,2382,', '呼和浩特市', 100, '150100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2383', '2948', '0,2825,2948,2383,', '丹棱县', 1424, '511424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2384', '2430', '0,5,2430,2384,', '郎溪县', 1821, '341821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2385', '2455', '0,986,2455,2385,', '民勤县', 621, '620621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2386', '2455', '0,986,2455,2386,', '古浪县', 622, '620622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2387', '2455', '0,986,2455,2387,', '天祝藏族自治县', 623, '620623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2388', '2510', '0,1786,2510,2388,', '南乐县', 923, '410923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2389', '2354', '0,2825,2354,2389,', '蒲江县', 131, '510131', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('239', '236', '0,782,236,239,', '井陉矿区', 107, '130107', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2390', '2510', '0,1786,2510,2390,', '清丰县', 922, '410922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2391', '2354', '0,2825,2354,2391,', '新津县', 132, '510132', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2392', '2510', '0,1786,2510,2392,', '濮阳县', 928, '410928', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2393', '2510', '0,1786,2510,2393,', '台前县', 927, '410927', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2394', '2510', '0,1786,2510,2394,', '范县', 926, '410926', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2395', '2404', '0,267,2404,2395,', '南芬区', 505, '210505', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2396', '2404', '0,267,2404,2396,', '明山区', 504, '210504', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2397', '2432', '0,1970,2432,2397,', '双城区', 113, '230113', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2398', '2432', '0,1970,2432,2398,', '阿城区', 112, '230112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2399', '2432', '0,1970,2432,2399,', '呼兰区', 111, '230111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('24', '155', '0,2825,155,24,', '沐川县', 1129, '511129', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('240', '236', '0,782,236,240,', '裕华区', 108, '130108', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2400', '2432', '0,1970,2432,2400,', '香坊区', 110, '230110', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2401', '2404', '0,267,2404,2401,', '溪湖区', 503, '210503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2402', '2404', '0,267,2404,2402,', '平山区', 502, '210502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2403', '2354', '0,2825,2354,2403,', '大邑县', 129, '510129', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2404', '267', '0,267,2404,', '本溪市', 500, '210500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2405', '2262', '0,3282,2262,2405,', '平遥县', 728, '140728', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2406', '2262', '0,3282,2262,2406,', '灵石县', 729, '140729', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2407', '2351', '0,1105,2351,2407,', '长汀县', 821, '350821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2408', '2532', '0,121,2532,2408,', '邵东市', 521, '430521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2409', '2351', '0,1105,2351,2409,', '上杭县', 823, '350823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('241', '236', '0,782,236,241,', '新华区', 105, '130105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2410', '2351', '0,1105,2351,2410,', '武平县', 824, '350824', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2411', '2532', '0,121,2532,2411,', '邵阳县', 523, '430523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2412', '2355', '0,431,2355,2412,', '托克逊县', 422, '650422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2413', '2351', '0,1105,2351,2413,', '连城县', 825, '350825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2414', '2532', '0,121,2532,2414,', '新邵县', 522, '430522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2415', '2354', '0,2825,2354,2415,', '金堂县', 121, '510121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2416', '2355', '0,431,2355,2416,', '鄯善县', 421, '650421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2417', '2532', '0,121,2532,2417,', '洞口县', 525, '430525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2418', '2532', '0,121,2532,2418,', '隆回县', 524, '430524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2419', '2532', '0,121,2532,2419,', '绥宁县', 527, '430527', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('242', '120', '0,120,242,', '黔南布依族苗族自治州', 2700, '522700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2420', '2280', '0,996,2280,2420,', '扶余市', 781, '220781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2421', '2532', '0,121,2532,2421,', '城步苗族自治县', 529, '430529', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2422', '2532', '0,121,2532,2422,', '新宁县', 528, '430528', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2423', '2433', '0,3360,2433,2423,', '七堵区', 702, '830702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2424', '2432', '0,1970,2432,2424,', '道外区', 104, '230104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2425', '2430', '0,5,2430,2425,', '宣州区', 1802, '341802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2426', '2433', '0,3360,2433,2426,', '暖暖区', 703, '830703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2427', '2432', '0,1970,2432,2427,', '南岗区', 103, '230103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2428', '2433', '0,3360,2433,2428,', '仁爱区', 704, '830704', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2429', '2432', '0,1970,2432,2429,', '道里区', 102, '230102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('243', '242', '0,120,242,243,', '都匀市', 2701, '522701', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2430', '5', '0,5,2430,', '宣城市', 1800, '341800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2431', '2433', '0,3360,2433,2431,', '中山区', 705, '830705', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2432', '1970', '0,1970,2432,', '哈尔滨市', 100, '230100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2433', '3360', '0,3360,2433,', '基隆市', 700, '830700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2434', '2433', '0,3360,2433,2434,', '中正区', 701, '830701', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2435', '2563', '0,1941,2563,2435,', '上林县', 125, '450125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2436', '2354', '0,2825,2354,2436,', '温江区', 115, '510115', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2437', '2455', '0,986,2455,2437,', '凉州区', 602, '620602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2438', '2262', '0,3282,2262,2438,', '榆社县', 721, '140721', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2439', '2563', '0,1941,2563,2439,', '马山县', 124, '450124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('244', '242', '0,120,242,244,', '福泉市', 2702, '522702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2440', '2354', '0,2825,2354,2440,', '新都区', 114, '510114', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2441', '2262', '0,3282,2262,2441,', '左权县', 722, '140722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2442', '2563', '0,1941,2563,2442,', '横县', 127, '450127', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2443', '2354', '0,2825,2354,2443,', '郫都区', 117, '510117', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2444', '2262', '0,3282,2262,2444,', '和顺县', 723, '140723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2445', '2563', '0,1941,2563,2445,', '宾阳县', 126, '450126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2446', '2354', '0,2825,2354,2446,', '双流区', 116, '510116', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2447', '2262', '0,3282,2262,2447,', '昔阳县', 724, '140724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2448', '2432', '0,1970,2432,2448,', '松北区', 109, '230109', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2449', '2433', '0,3360,2433,2449,', '安乐区', 706, '830706', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('245', '236', '0,782,236,245,', '藁城区', 109, '130109', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2450', '2262', '0,3282,2262,2450,', '寿阳县', 725, '140725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2451', '2432', '0,1970,2432,2451,', '平房区', 108, '230108', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2452', '2433', '0,3360,2433,2452,', '信义区', 707, '830707', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2453', '2262', '0,3282,2262,2453,', '太谷县', 726, '140726', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2454', '2563', '0,1941,2563,2454,', '隆安县', 123, '450123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2455', '986', '0,986,2455,', '武威市', 600, '620600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2456', '2262', '0,3282,2262,2456,', '祁县', 727, '140727', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2457', '2460', '0,891,2460,2457,', '高要区', 1204, '441204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2458', '2460', '0,891,2460,2458,', '鼎湖区', 1203, '441203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2459', '2460', '0,891,2460,2459,', '端州区', 1202, '441202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('246', '407', '0,1561,407,246,', '富源县', 325, '530325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2460', '891', '0,891,2460,', '肇庆市', 1200, '441200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2461', '2404', '0,267,2404,2461,', '本溪满族自治县', 521, '210521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2462', '2404', '0,267,2404,2462,', '桓仁满族自治县', 522, '210522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2463', '2601', '0,1941,2601,2463,', '凭祥市', 1481, '451481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2464', '2432', '0,1970,2432,2464,', '木兰县', 127, '230127', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2465', '2432', '0,1970,2432,2465,', '巴彦县', 126, '230126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2466', '2432', '0,1970,2432,2466,', '宾县', 125, '230125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2467', '2432', '0,1970,2432,2467,', '方正县', 124, '230124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2468', '2432', '0,1970,2432,2468,', '依兰县', 123, '230123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2469', '2432', '0,1970,2432,2469,', '延寿县', 129, '230129', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('247', '407', '0,1561,407,247,', '会泽县', 326, '530326', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2470', '2432', '0,1970,2432,2470,', '通河县', 128, '230128', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2471', '2573', '0,782,2573,2471,', '邱县', 430, '130430', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2472', '2573', '0,782,2573,2472,', '馆陶县', 433, '130433', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2473', '2573', '0,782,2573,2473,', '魏县', 434, '130434', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2474', '2573', '0,782,2573,2474,', '鸡泽县', 431, '130431', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2475', '2573', '0,782,2573,2475,', '广平县', 432, '130432', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2476', '2573', '0,782,2573,2476,', '曲周县', 435, '130435', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2477', '2551', '0,3360,2551,2477,', '桃源区', 636, '830636', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2478', '2551', '0,3360,2551,2478,', '那玛夏区', 637, '830637', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2479', '2551', '0,3360,2551,2479,', '杉林区', 632, '830632', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('248', '407', '0,1561,407,248,', '师宗县', 323, '530323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2480', '2551', '0,3360,2551,2480,', '甲仙区', 633, '830633', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2481', '2551', '0,3360,2551,2481,', '六龟区', 634, '830634', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2482', '2551', '0,3360,2551,2482,', '茂林区', 635, '830635', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2483', '2601', '0,1941,2601,2483,', '龙州县', 1423, '451423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2484', '2601', '0,1941,2601,2484,', '宁明县', 1422, '451422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2485', '2601', '0,1941,2601,2485,', '天等县', 1425, '451425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2486', '2601', '0,1941,2601,2486,', '大新县', 1424, '451424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2487', '2601', '0,1941,2601,2487,', '扶绥县', 1421, '451421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2488', '2536', '0,120,2536,2488,', '普定县', 422, '520422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2489', '2536', '0,120,2536,2489,', '镇宁布依族苗族自治县', 423, '520423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('249', '407', '0,1561,407,249,', '罗平县', 324, '530324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2490', '2568', '0,418,2568,2490,', '千阳县', 328, '610328', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2491', '2551', '0,3360,2551,2491,', '美浓区', 630, '830630', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2492', '2536', '0,120,2536,2492,', '关岭布依族苗族自治县', 424, '520424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2493', '2568', '0,418,2568,2493,', '麟游县', 329, '610329', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2494', '2551', '0,3360,2551,2494,', '内门区', 631, '830631', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2495', '2536', '0,120,2536,2495,', '紫云苗族布依族自治县', 425, '520425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2496', '2568', '0,418,2568,2496,', '眉县', 326, '610326', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2497', '2568', '0,418,2568,2497,', '陇县', 327, '610327', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2498', '2568', '0,418,2568,2498,', '扶风县', 324, '610324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2499', '2551', '0,3360,2551,2499,', '燕巢区', 625, '830625', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('25', '89', '0,121,89,25,', '涟源市', 1382, '431382', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('250', '407', '0,1561,407,250,', '陆良县', 322, '530322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2500', '2551', '0,3360,2551,2500,', '阿莲区', 626, '830626', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2501', '2568', '0,418,2568,2501,', '太白县', 331, '610331', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2502', '2551', '0,3360,2551,2502,', '茄萣区', 627, '830627', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2503', '2551', '0,3360,2551,2503,', '湖内区', 628, '830628', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2504', '2551', '0,3360,2551,2504,', '桥头区', 621, '830621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2505', '2568', '0,418,2568,2505,', '凤县', 330, '610330', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2506', '2551', '0,3360,2551,2506,', '梓官区', 622, '830622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2507', '2551', '0,3360,2551,2507,', '弥陀区', 623, '830623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2508', '2551', '0,3360,2551,2508,', '永安区', 624, '830624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2509', '2551', '0,3360,2551,2509,', '旗山区', 629, '830629', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('251', '252', '0,267,252,251,', '双塔区', 1302, '211302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2510', '1786', '0,1786,2510,', '濮阳市', 900, '410900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2511', '2532', '0,121,2532,2511,', '北塔区', 511, '430511', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2512', '2432', '0,1970,2432,2512,', '五常市', 184, '230184', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2513', '2432', '0,1970,2432,2513,', '尚志市', 183, '230183', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2514', '2656', '0,1561,2656,2514,', '水富市', 681, '530681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2515', '2551', '0,3360,2551,2515,', '路竹区', 620, '830620', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2516', '2510', '0,1786,2510,2516,', '华龙区', 902, '410902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2517', '2568', '0,418,2568,2517,', '凤翔县', 322, '610322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2518', '2551', '0,3360,2551,2518,', '鸟松区', 614, '830614', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2519', '2568', '0,418,2568,2519,', '岐山县', 323, '610323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('252', '267', '0,267,252,', '朝阳市', 1300, '211300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2520', '2551', '0,3360,2551,2520,', '林园区', 615, '830615', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2521', '3282', '0,3282,2521,', '吕梁市', 1100, '141100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2522', '2551', '0,3360,2551,2522,', '仁武区', 616, '830616', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2523', '2551', '0,3360,2551,2523,', '大树区', 617, '830617', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2524', '2521', '0,3282,2521,2524,', '离石区', 1102, '141102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2525', '2551', '0,3360,2551,2525,', '旗津区', 610, '830610', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2526', '2551', '0,3360,2551,2526,', '小港区', 611, '830611', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2527', '2551', '0,3360,2551,2527,', '凤山区', 612, '830612', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2528', '2551', '0,3360,2551,2528,', '大寮区', 613, '830613', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2529', '2563', '0,1941,2563,2529,', '武鸣区', 110, '450110', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('253', '252', '0,267,252,253,', '龙城区', 1303, '211303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2530', '2551', '0,3360,2551,2530,', '大社区', 618, '830618', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2531', '2551', '0,3360,2551,2531,', '冈山区', 619, '830619', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2532', '121', '0,121,2532,', '邵阳市', 500, '430500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2533', '2532', '0,121,2532,2533,', '大祥区', 503, '430503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2534', '1898', '0,2900,1898,2534,', '邹平市', 1681, '371681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2535', '2532', '0,121,2532,2535,', '双清区', 502, '430502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2536', '120', '0,120,2536,', '安顺市', 400, '520400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2537', '2650', '0,891,2650,2537,', '恩平市', 785, '440785', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2538', '2536', '0,120,2536,2538,', '西秀区', 402, '520402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2539', '2650', '0,891,2650,2539,', '鹤山市', 784, '440784', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('254', '268', '0,121,268,254,', '武陵源区', 811, '430811', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2540', '2536', '0,120,2536,2540,', '平坝区', 403, '520403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2541', '2568', '0,418,2568,2541,', '陈仓区', 304, '610304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2542', '2650', '0,891,2650,2542,', '开平市', 783, '440783', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2543', '2568', '0,418,2568,2543,', '渭滨区', 302, '610302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2544', '2650', '0,891,2650,2544,', '台山市', 781, '440781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2545', '2568', '0,418,2568,2545,', '金台区', 303, '610303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2546', '2551', '0,3360,2551,2546,', '鼓山区', 603, '830603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2547', '2551', '0,3360,2551,2547,', '三民区', 604, '830604', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2548', '2551', '0,3360,2551,2548,', '盐埕区', 605, '830605', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2549', '2551', '0,3360,2551,2549,', '前金区', 606, '830606', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('255', '407', '0,1561,407,255,', '宣威市', 381, '530381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2550', '2563', '0,1941,2563,2550,', '西乡塘区', 107, '450107', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2551', '3360', '0,3360,2551,', '高雄市', 600, '830600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2552', '2563', '0,1941,2563,2552,', '邕宁区', 109, '450109', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2553', '2551', '0,3360,2551,2553,', '楠梓区', 601, '830601', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2554', '2563', '0,1941,2563,2554,', '良庆区', 108, '450108', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2555', '2551', '0,3360,2551,2555,', '左营区', 602, '830602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2556', '2563', '0,1941,2563,2556,', '青秀区', 103, '450103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2557', '2563', '0,1941,2563,2557,', '兴宁区', 102, '450102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2558', '2563', '0,1941,2563,2558,', '江南区', 105, '450105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2559', '1', '0,2559,', '西藏自治区', 0, '540000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('256', '202', '0,996,202,256,', '蛟河市', 281, '220281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2560', '2551', '0,3360,2551,2560,', '新兴区', 607, '830607', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2561', '2551', '0,3360,2551,2561,', '苓雅区', 608, '830608', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2562', '2551', '0,3360,2551,2562,', '前镇区', 609, '830609', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2563', '1941', '0,1941,2563,', '南宁市', 100, '450100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2564', '3360', '0,3360,2564,', '花莲县', 9010, '839010', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2565', '3360', '0,3360,2565,', '澎湖县', 9011, '839011', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2566', '3360', '0,3360,2566,', '金门县', 9012, '839012', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2567', '3360', '0,3360,2567,', '连江县', 9013, '839013', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2568', '418', '0,418,2568,', '宝鸡市', 300, '610300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2569', '3360', '0,3360,2569,', '嘉义县', 9006, '839006', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('257', '202', '0,996,202,257,', '舒兰市', 283, '220283', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2570', '3360', '0,3360,2570,', '云林县', 9007, '839007', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2571', '3360', '0,3360,2571,', '屏东县', 9008, '839008', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2572', '3360', '0,3360,2572,', '台东县', 9009, '839009', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2573', '782', '0,782,2573,', '邯郸市', 400, '130400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2574', '2573', '0,782,2573,2574,', '复兴区', 404, '130404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2575', '2573', '0,782,2573,2575,', '邯山区', 402, '130402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2576', '1923', '0,1105,1923,2576,', '邵武市', 781, '350781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2577', '2573', '0,782,2573,2577,', '丛台区', 403, '130403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2578', '1923', '0,1105,1923,2578,', '武夷山市', 782, '350782', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2579', '3360', '0,3360,2579,', '宜兰县', 9001, '839001', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('258', '202', '0,996,202,258,', '桦甸市', 282, '220282', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2580', '2573', '0,782,2573,2580,', '永年区', 408, '130408', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2581', '1923', '0,1105,1923,2581,', '建瓯市', 783, '350783', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2582', '3360', '0,3360,2582,', '新竹县', 9002, '839002', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2583', '3360', '0,3360,2583,', '苗栗县', 9003, '839003', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2584', '2573', '0,782,2573,2584,', '峰峰矿区', 406, '130406', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2585', '3360', '0,3360,2585,', '彰化县', 9004, '839004', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2586', '2573', '0,782,2573,2586,', '肥乡区', 407, '130407', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2587', '3360', '0,3360,2587,', '南投县', 9005, '839005', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2588', '2591', '0,2129,2591,2588,', '东湖区', 102, '360102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2589', '2591', '0,2129,2591,2589,', '西湖区', 103, '360103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('259', '380', '0,3015,380,259,', '龙泉市', 1181, '331181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2590', '937', '0,3282,937,2590,', '怀仁市', 681, '140681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2591', '2129', '0,2129,2591,', '南昌市', 100, '360100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2592', '1', '0,2592,', '内蒙古自治区', 0, '150000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2593', '2591', '0,2129,2591,2593,', '青云谱区', 104, '360104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2594', '2591', '0,2129,2591,2594,', '湾里区', 105, '360105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2595', '2620', '0,2901,2620,2595,', '永乐群岛', 324, '460324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2596', '2620', '0,2901,2620,2596,', '中沙群岛的岛礁及其海域', 323, '460323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2597', '2620', '0,2901,2620,2597,', '南沙群岛', 322, '460322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2598', '2620', '0,2901,2620,2598,', '西沙群岛', 321, '460321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2599', '2591', '0,2129,2591,2599,', '青山湖区', 111, '360111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('26', '155', '0,2825,155,26,', '夹江县', 1126, '511126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('260', '543', '0,3282,543,260,', '郊区', 311, '140311', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2600', '2591', '0,2129,2591,2600,', '新建区', 112, '360112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2601', '1941', '0,1941,2601,', '崇左市', 1400, '451400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2602', '2601', '0,1941,2601,2602,', '江州区', 1402, '451402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2603', '2573', '0,782,2573,2603,', '临漳县', 423, '130423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2604', '2573', '0,782,2573,2604,', '涉县', 426, '130426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2605', '2573', '0,782,2573,2605,', '磁县', 427, '130427', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2606', '2573', '0,782,2573,2606,', '成安县', 424, '130424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2607', '2573', '0,782,2573,2607,', '大名县', 425, '130425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2608', '2591', '0,2129,2591,2608,', '进贤县', 124, '360124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2609', '2591', '0,2129,2591,2609,', '安义县', 123, '360123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('261', '202', '0,996,202,261,', '磐石市', 284, '220284', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2610', '2591', '0,2129,2591,2610,', '南昌县', 121, '360121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2611', '2613', '0,2825,2613,2611,', '翠屏区', 1502, '511502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2612', '2613', '0,2825,2613,2612,', '南溪区', 1503, '511503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2613', '2825', '0,2825,2613,', '宜宾市', 1500, '511500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2614', '2613', '0,2825,2613,2614,', '叙州区', 1504, '511504', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2615', '267', '0,267,2615,', '辽阳市', 1000, '211000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2616', '2743', '0,2147,2743,2616,', '贵南县', 2525, '632525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2617', '2743', '0,2147,2743,2617,', '兴海县', 2524, '632524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2618', '2743', '0,2147,2743,2618,', '贵德县', 2523, '632523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2619', '2743', '0,2147,2743,2619,', '同德县', 2522, '632522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('262', '304', '0,1561,304,262,', '香格里拉市', 3401, '533401', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2620', '2901', '0,2901,2620,', '三沙市', 300, '460300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2621', '2664', '0,2138,2664,2621,', '溧水区', 117, '320117', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2622', '2664', '0,2138,2664,2622,', '高淳区', 118, '320118', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2623', '2664', '0,2138,2664,2623,', '江宁区', 115, '320115', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2624', '2664', '0,2138,2664,2624,', '六合区', 116, '320116', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2625', '2664', '0,2138,2664,2625,', '栖霞区', 113, '320113', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2626', '2664', '0,2138,2664,2626,', '雨花台区', 114, '320114', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2627', '1723', '0,1786,1723,2627,', '邓州市', 1381, '411381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2628', '2664', '0,2138,2664,2628,', '浦口区', 111, '320111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2629', '2615', '0,267,2615,2629,', '太子河区', 1011, '211011', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('263', '120', '0,120,263,', '贵阳市', 100, '520100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2630', '2521', '0,3282,2521,2630,', '汾阳市', 1182, '141182', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2631', '2521', '0,3282,2521,2631,', '孝义市', 1181, '141181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2632', '2656', '0,1561,2656,2632,', '大关县', 624, '530624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2633', '2656', '0,1561,2656,2633,', '永善县', 625, '530625', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2634', '2656', '0,1561,2656,2634,', '巧家县', 622, '530622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2635', '2656', '0,1561,2656,2635,', '盐津县', 623, '530623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2636', '2656', '0,1561,2656,2636,', '鲁甸县', 621, '530621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2637', '2615', '0,267,2615,2637,', '弓长岭区', 1005, '211005', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2638', '2615', '0,267,2615,2638,', '宏伟区', 1004, '211004', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2639', '2615', '0,267,2615,2639,', '文圣区', 1003, '211003', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('264', '2900', '0,2900,264,', '日照市', 1100, '371100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2640', '2615', '0,267,2615,2640,', '白塔区', 1002, '211002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2641', '2656', '0,1561,2656,2641,', '彝良县', 628, '530628', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2642', '2656', '0,1561,2656,2642,', '威信县', 629, '530629', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2643', '2656', '0,1561,2656,2643,', '绥江县', 626, '530626', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2644', '2656', '0,1561,2656,2644,', '镇雄县', 627, '530627', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2645', '2615', '0,267,2615,2645,', '辽阳县', 1021, '211021', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2646', '2709', '0,3083,2709,2646,', '灵武市', 181, '640181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2647', '2650', '0,891,2650,2647,', '新会区', 705, '440705', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2648', '2650', '0,891,2650,2648,', '江海区', 704, '440704', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2649', '2650', '0,891,2650,2649,', '蓬江区', 703, '440703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('265', '264', '0,2900,264,265,', '岚山区', 1103, '371103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2650', '891', '0,891,2650,', '江门市', 700, '440700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2651', '2655', '0,2592,2655,2651,', '集宁区', 902, '150902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2652', '2251', '0,3015,2251,2652,', '瑞安市', 381, '330381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2653', '2656', '0,1561,2656,2653,', '昭阳区', 602, '530602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2654', '2251', '0,3015,2251,2654,', '乐清市', 382, '330382', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2655', '2592', '0,2592,2655,', '乌兰察布市', 900, '150900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2656', '1561', '0,1561,2656,', '昭通市', 600, '530600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2657', '2664', '0,2138,2664,2657,', '鼓楼区', 106, '320106', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2658', '2691', '0,5,2691,2658,', '祁门县', 1024, '341024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2659', '2664', '0,2138,2664,2659,', '秦淮区', 104, '320104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('266', '264', '0,2900,264,266,', '东港区', 1102, '371102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2660', '2691', '0,5,2691,2660,', '休宁县', 1022, '341022', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2661', '2664', '0,2138,2664,2661,', '建邺区', 105, '320105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2662', '2691', '0,5,2691,2662,', '黟县', 1023, '341023', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2663', '2664', '0,2138,2664,2663,', '玄武区', 102, '320102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2664', '2138', '0,2138,2664,', '南京市', 100, '320100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2665', '1785', '0,1941,1785,2665,', '北流市', 981, '450981', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2666', '2691', '0,5,2691,2666,', '歙县', 1021, '341021', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2667', '2521', '0,3282,2521,2667,', '交城县', 1122, '141122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2668', '2521', '0,3282,2521,2668,', '文水县', 1121, '141121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2669', '2521', '0,3282,2521,2669,', '临县', 1124, '141124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('267', '1', '0,267,', '辽宁省', 0, '210000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2670', '2521', '0,3282,2521,2670,', '兴县', 1123, '141123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2671', '2521', '0,3282,2521,2671,', '石楼县', 1126, '141126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2672', '2521', '0,3282,2521,2672,', '柳林县', 1125, '141125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2673', '2521', '0,3282,2521,2673,', '方山县', 1128, '141128', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2674', '2521', '0,3282,2521,2674,', '岚县', 1127, '141127', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2675', '2521', '0,3282,2521,2675,', '中阳县', 1129, '141129', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2676', '2573', '0,782,2573,2676,', '武安市', 481, '130481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2677', '2694', '0,986,2694,2677,', '镇原县', 1027, '621027', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2678', '2694', '0,986,2694,2678,', '合水县', 1024, '621024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2679', '2694', '0,986,2694,2679,', '华池县', 1023, '621023', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('268', '121', '0,121,268,', '张家界市', 800, '430800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2680', '2694', '0,986,2694,2680,', '宁县', 1026, '621026', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2681', '2694', '0,986,2694,2681,', '正宁县', 1025, '621025', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2682', '2694', '0,986,2694,2682,', '环县', 1022, '621022', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2683', '2694', '0,986,2694,2683,', '庆城县', 1021, '621021', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2684', '2521', '0,3282,2521,2684,', '交口县', 1130, '141130', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2685', '1785', '0,1941,1785,2685,', '兴业县', 924, '450924', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2686', '1785', '0,1941,1785,2686,', '容县', 921, '450921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2687', '1785', '0,1941,1785,2687,', '博白县', 923, '450923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2688', '1785', '0,1941,1785,2688,', '陆川县', 922, '450922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2689', '2691', '0,5,2691,2689,', '屯溪区', 1002, '341002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('269', '263', '0,120,263,269,', '云岩区', 103, '520103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2690', '2691', '0,5,2691,2690,', '黄山区', 1003, '341003', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2691', '5', '0,5,2691,', '黄山市', 1000, '341000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2692', '2691', '0,5,2691,2692,', '徽州区', 1004, '341004', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2693', '2694', '0,986,2694,2693,', '西峰区', 1002, '621002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2694', '986', '0,986,2694,', '庆阳市', 1000, '621000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2695', '2900', '0,2900,2695,', '泰安市', 900, '370900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2696', '2695', '0,2900,2695,2696,', '泰山区', 902, '370902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2697', '2758', '0,2825,2758,2697,', '阆中市', 1381, '511381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2698', '2700', '0,891,2700,2698,', '云安区', 5303, '445303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2699', '2700', '0,891,2700,2699,', '云城区', 5302, '445302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('27', '29', '0,2138,29,27,', '天宁区', 402, '320402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('270', '263', '0,120,263,270,', '南明区', 102, '520102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2700', '891', '0,891,2700,', '云浮市', 5300, '445300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2701', '2695', '0,2900,2695,2701,', '宁阳县', 921, '370921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2702', '2695', '0,2900,2695,2702,', '东平县', 923, '370923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2703', '2737', '0,2138,2737,2703,', '通州区', 612, '320612', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2704', '2723', '0,5,2723,2704,', '芜湖县', 221, '340221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2705', '2723', '0,5,2723,2705,', '繁昌县', 222, '340222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2706', '2737', '0,2138,2737,2706,', '港闸区', 611, '320611', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2707', '2723', '0,5,2723,2707,', '无为县', 225, '340225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2708', '2723', '0,5,2723,2708,', '南陵县', 223, '340223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2709', '3083', '0,3083,2709,', '银川市', 100, '640100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('271', '268', '0,121,268,271,', '永定区', 802, '430802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2710', '2695', '0,2900,2695,2710,', '岱岳区', 911, '370911', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2711', '2700', '0,891,2700,2711,', '新兴县', 5321, '445321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2712', '2700', '0,891,2700,2712,', '郁南县', 5322, '445322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2713', '1970', '0,1970,2713,', '大庆市', 600, '230600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2714', '2737', '0,2138,2737,2714,', '如东县', 623, '320623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2715', '2713', '0,1970,2713,2715,', '大同区', 606, '230606', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2716', '2713', '0,1970,2713,2716,', '红岗区', 605, '230605', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2717', '2713', '0,1970,2713,2717,', '让胡路区', 604, '230604', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2718', '2713', '0,1970,2713,2718,', '龙凤区', 603, '230603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2719', '2713', '0,1970,2713,2719,', '萨尔图区', 602, '230602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('272', '304', '0,1561,304,272,', '德钦县', 3422, '533422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2720', '2813', '0,3015,2813,2720,', '江山市', 881, '330881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2721', '2723', '0,5,2723,2721,', '鸠江区', 207, '340207', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2722', '2723', '0,5,2723,2722,', '三山区', 208, '340208', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2723', '5', '0,5,2723,', '芜湖市', 200, '340200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2724', '2709', '0,3083,2709,2724,', '兴庆区', 104, '640104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2725', '2723', '0,5,2723,2725,', '弋江区', 203, '340203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2726', '2709', '0,3083,2709,2726,', '金凤区', 106, '640106', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2727', '2709', '0,3083,2709,2727,', '西夏区', 105, '640105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2728', '2723', '0,5,2723,2728,', '镜湖区', 202, '340202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2729', '2709', '0,3083,2709,2729,', '贺兰县', 122, '640122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('273', '543', '0,3282,543,273,', '平定县', 321, '140321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2730', '2709', '0,3083,2709,2730,', '永宁县', 121, '640121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2731', '2713', '0,1970,2713,2731,', '肇源县', 622, '230622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2732', '2735', '0,2747,2735,2732,', '曾都区', 1303, '421303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2733', '2713', '0,1970,2713,2733,', '肇州县', 621, '230621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2734', '2752', '0,5,2752,2734,', '霍山县', 1525, '341525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2735', '2747', '0,2747,2735,', '随州市', 1300, '421300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2736', '2737', '0,2138,2737,2736,', '崇川区', 602, '320602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2737', '2138', '0,2138,2737,', '南通市', 600, '320600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2738', '2752', '0,5,2752,2738,', '金寨县', 1524, '341524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2739', '2752', '0,5,2752,2739,', '舒城县', 1523, '341523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('274', '279', '0,1941,279,274,', '万秀区', 403, '450403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2740', '2713', '0,1970,2713,2740,', '杜尔伯特蒙古族自治县', 624, '230624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2741', '2752', '0,5,2752,2741,', '霍邱县', 1522, '341522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2742', '2713', '0,1970,2713,2742,', '林甸县', 623, '230623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2743', '2147', '0,2147,2743,', '海南藏族自治州', 2500, '632500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2744', '2735', '0,2747,2735,2744,', '随县', 1321, '421321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2745', '2763', '0,121,2763,2745,', '醴陵市', 281, '430281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2746', '1786', '0,1786,2746,', '济源市', 9001, '419001', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2747', '1', '0,2747,', '湖北省', 0, '420000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2748', '2752', '0,5,2752,2748,', '叶集区', 1504, '341504', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2749', '2752', '0,5,2752,2749,', '裕安区', 1503, '341503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('275', '543', '0,3282,543,275,', '盂县', 322, '140322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2750', '2743', '0,2147,2743,2750,', '共和县', 2521, '632521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2751', '2752', '0,5,2752,2751,', '金安区', 1502, '341502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2752', '5', '0,5,2752,', '六安市', 1500, '341500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2753', '2759', '0,1786,2759,2753,', '鹤山区', 602, '410602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2754', '2763', '0,121,2763,2754,', '天元区', 211, '430211', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2755', '2695', '0,2900,2695,2755,', '新泰市', 982, '370982', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2756', '2759', '0,1786,2759,2756,', '山城区', 603, '410603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2757', '2763', '0,121,2763,2757,', '渌口区', 212, '430212', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2758', '2825', '0,2825,2758,', '南充市', 1300, '511300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2759', '1786', '0,1786,2759,', '鹤壁市', 600, '410600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('276', '279', '0,1941,279,276,', '龙圩区', 406, '450406', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2760', '2695', '0,2900,2695,2760,', '肥城市', 983, '370983', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2761', '2875', '0,2747,2875,2761,', '京山市', 882, '420882', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2762', '2836', '0,2592,2836,2762,', '敖汉旗', 430, '150430', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2763', '121', '0,121,2763,', '株洲市', 200, '430200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2764', '2964', '0,431,2964,2764,', '沙雅县', 2924, '652924', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2765', '2964', '0,431,2964,2765,', '新和县', 2925, '652925', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2766', '2763', '0,121,2763,2766,', '荷塘区', 202, '430202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2767', '2964', '0,431,2964,2767,', '拜城县', 2926, '652926', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2768', '2964', '0,431,2964,2768,', '乌什县', 2927, '652927', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2769', '2763', '0,121,2763,2769,', '石峰区', 204, '430204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('277', '279', '0,1941,279,277,', '长洲区', 405, '450405', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2770', '2964', '0,431,2964,2770,', '阿瓦提县', 2928, '652928', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2771', '2763', '0,121,2763,2771,', '芦淞区', 203, '430203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2772', '2964', '0,431,2964,2772,', '柯坪县', 2929, '652929', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2773', '2759', '0,1786,2759,2773,', '淇滨区', 611, '410611', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2774', '2964', '0,431,2964,2774,', '温宿县', 2922, '652922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2775', '2964', '0,431,2964,2775,', '库车县', 2923, '652923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2776', '2780', '0,2129,2780,2776,', '赣县区', 704, '360704', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2777', '2811', '0,986,2811,2777,', '张家川回族自治县', 525, '620525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2778', '2780', '0,2129,2780,2778,', '章贡区', 702, '360702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2779', '2780', '0,2129,2780,2779,', '南康区', 703, '360703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('278', '252', '0,267,252,278,', '喀喇沁左翼蒙古族自治县', 1324, '211324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2780', '2129', '0,2129,2780,', '赣州市', 700, '360700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2781', '2811', '0,986,2811,2781,', '清水县', 521, '620521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2782', '2811', '0,986,2811,2782,', '秦安县', 522, '620522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2783', '2811', '0,986,2811,2783,', '甘谷县', 523, '620523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2784', '2811', '0,986,2811,2784,', '武山县', 524, '620524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2785', '2813', '0,3015,2813,2785,', '常山县', 822, '330822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2786', '2758', '0,2825,2758,2786,', '营山县', 1322, '511322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2787', '2758', '0,2825,2758,2787,', '蓬安县', 1323, '511323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2788', '2813', '0,3015,2813,2788,', '开化县', 824, '330824', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2789', '2759', '0,1786,2759,2789,', '淇县', 622, '410622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('279', '1941', '0,1941,279,', '梧州市', 400, '450400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2790', '2813', '0,3015,2813,2790,', '龙游县', 825, '330825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2791', '2759', '0,1786,2759,2791,', '浚县', 621, '410621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2792', '2758', '0,2825,2758,2792,', '南部县', 1321, '511321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2793', '2763', '0,121,2763,2793,', '茶陵县', 224, '430224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2794', '2763', '0,121,2763,2794,', '攸县', 223, '430223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2795', '2763', '0,121,2763,2795,', '炎陵县', 225, '430225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2796', '2780', '0,2129,2780,2796,', '定南县', 728, '360728', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2797', '2780', '0,2129,2780,2797,', '全南县', 729, '360729', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2798', '996', '0,996,2798,', '辽源市', 400, '220400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2799', '2798', '0,996,2798,2799,', '西安区', 403, '220403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('28', '89', '0,121,89,28,', '冷水江市', 1381, '431381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('280', '263', '0,120,263,280,', '乌当区', 112, '520112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2800', '2798', '0,996,2798,2800,', '龙山区', 402, '220402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2801', '2780', '0,2129,2780,2801,', '安远县', 726, '360726', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2802', '2758', '0,2825,2758,2802,', '嘉陵区', 1304, '511304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2803', '2811', '0,986,2811,2803,', '麦积区', 503, '620503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2804', '2780', '0,2129,2780,2804,', '龙南县', 727, '360727', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2805', '2780', '0,2129,2780,2805,', '上犹县', 724, '360724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2806', '2758', '0,2825,2758,2806,', '顺庆区', 1302, '511302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2807', '2780', '0,2129,2780,2807,', '崇义县', 725, '360725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2808', '2758', '0,2825,2758,2808,', '高坪区', 1303, '511303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2809', '2780', '0,2129,2780,2809,', '信丰县', 722, '360722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('281', '263', '0,120,263,281,', '花溪区', 111, '520111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2810', '2780', '0,2129,2780,2810,', '大余县', 723, '360723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2811', '986', '0,986,2811,', '天水市', 500, '620500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2812', '2811', '0,986,2811,2812,', '秦州区', 502, '620502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2813', '3015', '0,3015,2813,', '衢州市', 800, '330800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2814', '2813', '0,3015,2813,2814,', '柯城区', 802, '330802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2815', '2813', '0,3015,2813,2815,', '衢江区', 803, '330803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2816', '2780', '0,2129,2780,2816,', '宁都县', 730, '360730', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2817', '2820', '0,1941,2820,2817,', '平桂区', 1103, '451103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2818', '2780', '0,2129,2780,2818,', '石城县', 735, '360735', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2819', '2780', '0,2129,2780,2819,', '会昌县', 733, '360733', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('282', '252', '0,267,252,282,', '建平县', 1322, '211322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2820', '1941', '0,1941,2820,', '贺州市', 1100, '451100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2821', '2780', '0,2129,2780,2821,', '寻乌县', 734, '360734', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2822', '2780', '0,2129,2780,2822,', '于都县', 731, '360731', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2823', '2820', '0,1941,2820,2823,', '八步区', 1102, '451102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2824', '2780', '0,2129,2780,2824,', '兴国县', 732, '360732', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2825', '1', '0,2825,', '四川省', 0, '510000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2826', '782', '0,782,2826,', '承德市', 800, '130800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2827', '2798', '0,996,2798,2827,', '东丰县', 421, '220421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2828', '2826', '0,782,2826,2828,', '鹰手营子矿区', 804, '130804', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2829', '2798', '0,996,2798,2829,', '东辽县', 422, '220422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('283', '252', '0,267,252,283,', '朝阳县', 1321, '211321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2830', '2826', '0,782,2826,2830,', '双桥区', 802, '130802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2831', '2826', '0,782,2826,2831,', '双滦区', 803, '130803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2832', '2929', '0,891,2929,2832,', '阳春市', 1781, '441781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2833', '2836', '0,2592,2836,2833,', '松山区', 404, '150404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2834', '2836', '0,2592,2836,2834,', '红山区', 402, '150402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2835', '2836', '0,2592,2836,2835,', '元宝山区', 403, '150403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2836', '2592', '0,2592,2836,', '赤峰市', 400, '150400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2837', '2758', '0,2825,2758,2837,', '仪陇县', 1324, '511324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2838', '2758', '0,2825,2758,2838,', '西充县', 1325, '511325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2839', '3337', '0,120,3337,2839,', '盘州市', 281, '520281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('284', '986', '0,986,284,', '嘉峪关市', 200, '620200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2840', '1970', '0,1970,2840,', '黑河市', 1100, '231100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2841', '2840', '0,1970,2840,2841,', '爱辉区', 1102, '231102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2842', '2820', '0,1941,2820,2842,', '钟山县', 1122, '451122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2843', '2820', '0,1941,2820,2843,', '昭平县', 1121, '451121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2844', '2820', '0,1941,2820,2844,', '富川瑶族自治县', 1123, '451123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2845', '2900', '0,2900,2845,', '德州市', 1400, '371400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2846', '678', '0,2138,678,2846,', '高邮市', 1084, '321084', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2847', '2826', '0,782,2826,2847,', '兴隆县', 822, '130822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2848', '678', '0,2138,678,2848,', '仪征市', 1081, '321081', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2849', '2826', '0,782,2826,2849,', '承德县', 821, '130821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('285', '284', '0,986,284,285,', '市辖区', 201, '620201', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2850', '2826', '0,782,2826,2850,', '丰宁满族自治县', 826, '130826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2851', '2845', '0,2900,2845,2851,', '德城区', 1402, '371402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2852', '2875', '0,2747,2875,2852,', '钟祥市', 881, '420881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2853', '2826', '0,782,2826,2853,', '宽城满族自治县', 827, '130827', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2854', '2826', '0,782,2826,2854,', '滦平县', 824, '130824', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2855', '2826', '0,782,2826,2855,', '隆化县', 825, '130825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2856', '2845', '0,2900,2845,2856,', '陵城区', 1403, '371403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2857', '2836', '0,2592,2836,2857,', '喀喇沁旗', 428, '150428', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2858', '2868', '0,3360,2868,2858,', '东区', 801, '830801', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2859', '2836', '0,2592,2836,2859,', '宁城县', 429, '150429', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('286', '242', '0,120,242,286,', '惠水县', 2731, '522731', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2860', '2868', '0,3360,2868,2860,', '北区', 802, '830802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2861', '2826', '0,782,2826,2861,', '围场满族蒙古族自治县', 828, '130828', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2862', '2836', '0,2592,2836,2862,', '翁牛特旗', 426, '150426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2863', '2868', '0,3360,2868,2863,', '香山区', 803, '830803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2864', '2836', '0,2592,2836,2864,', '林西县', 424, '150424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2865', '2836', '0,2592,2836,2865,', '克什克腾旗', 425, '150425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2866', '2836', '0,2592,2836,2866,', '巴林左旗', 422, '150422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2867', '2836', '0,2592,2836,2867,', '巴林右旗', 423, '150423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2868', '3360', '0,3360,2868,', '新竹市', 800, '830800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2869', '2836', '0,2592,2836,2869,', '阿鲁科尔沁旗', 421, '150421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('287', '242', '0,120,242,287,', '三都水族自治县', 2732, '522732', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2870', '2881', '0,2900,2881,2870,', '河东区', 1312, '371312', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2871', '2881', '0,2900,2881,2871,', '罗庄区', 1311, '371311', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2872', '2988', '0,1561,2988,2872,', '腾冲市', 581, '530581', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2873', '2967', '0,3282,2967,2873,', '晋源区', 110, '140110', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2874', '2903', '0,418,2903,2874,', '宜君县', 222, '610222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2875', '2747', '0,2747,2875,', '荆门市', 800, '420800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2876', '2840', '0,1970,2840,2876,', '嫩江市', 1121, '231121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2877', '2875', '0,2747,2875,2877,', '掇刀区', 804, '420804', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2878', '2840', '0,1970,2840,2878,', '逊克县', 1123, '231123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2879', '2840', '0,1970,2840,2879,', '孙吴县', 1124, '231124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('288', '2901', '0,2901,288,', '陵水黎族自治县', 9028, '469028', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2880', '2875', '0,2747,2875,2880,', '东宝区', 802, '420802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2881', '2900', '0,2900,2881,', '临沂市', 1300, '371300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2882', '2984', '0,2138,2984,2882,', '句容市', 1183, '321183', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2883', '2984', '0,2138,2984,2883,', '丹阳市', 1181, '321181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2884', '2984', '0,2138,2984,2884,', '扬中市', 1182, '321182', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2885', '2890', '0,891,2890,2885,', '金湾区', 404, '440404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2886', '2890', '0,891,2890,2886,', '斗门区', 403, '440403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2887', '120', '0,120,2887,', '遵义市', 300, '520300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2888', '2890', '0,891,2890,2888,', '香洲区', 402, '440402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2889', '2887', '0,120,2887,2889,', '红花岗区', 302, '520302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('289', '2901', '0,2901,289,', '乐东黎族自治县', 9027, '469027', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2890', '891', '0,891,2890,', '珠海市', 400, '440400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2891', '2887', '0,120,2887,2891,', '汇川区', 303, '520303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2892', '2887', '0,120,2887,2892,', '播州区', 304, '520304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2893', '2881', '0,2900,2881,2893,', '兰山区', 1302, '371302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2894', '2903', '0,418,2903,2894,', '印台区', 203, '610203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2895', '2903', '0,418,2903,2895,', '耀州区', 204, '610204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2896', '2967', '0,3282,2967,2896,', '清徐县', 121, '140121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2897', '2967', '0,3282,2967,2897,', '阳曲县', 122, '140122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2898', '2967', '0,3282,2967,2898,', '娄烦县', 123, '140123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2899', '2990', '0,1941,2990,2899,', '东兴市', 681, '450681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('29', '2138', '0,2138,29,', '常州市', 400, '320400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('290', '2901', '0,2901,290,', '昌江黎族自治县', 9026, '469026', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2900', '1', '0,2900,', '山东省', 0, '370000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2901', '1', '0,2901,', '海南省', 0, '460000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2902', '2903', '0,418,2903,2902,', '王益区', 202, '610202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2903', '418', '0,418,2903,', '铜川市', 200, '610200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2904', '2875', '0,2747,2875,2904,', '沙洋县', 822, '420822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2905', '2906', '0,267,2906,2905,', '中山区', 202, '210202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2906', '267', '0,267,2906,', '大连市', 200, '210200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2907', '2906', '0,267,2906,2907,', '沙河口区', 204, '210204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2908', '2906', '0,267,2906,2908,', '西岗区', 203, '210203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2909', '2918', '0,1105,2918,2909,', '梅列区', 402, '350402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('291', '558', '0,418,558,291,', '神木市', 881, '610881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2910', '2881', '0,2900,2881,2910,', '沂南县', 1321, '371321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2911', '2918', '0,1105,2918,2911,', '三元区', 403, '350403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2912', '2881', '0,2900,2881,2912,', '沂水县', 1323, '371323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2913', '2881', '0,2900,2881,2913,', '郯城县', 1322, '371322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2914', '2881', '0,2900,2881,2914,', '临沭县', 1329, '371329', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2915', '2881', '0,2900,2881,2915,', '蒙阴县', 1328, '371328', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2916', '2881', '0,2900,2881,2916,', '费县', 1325, '371325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2917', '2881', '0,2900,2881,2917,', '兰陵县', 1324, '371324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2918', '1105', '0,1105,2918,', '三明市', 400, '350400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2919', '2881', '0,2900,2881,2919,', '莒南县', 1327, '371327', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('292', '2901', '0,2901,292,', '白沙黎族自治县', 9025, '469025', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2920', '2881', '0,2900,2881,2920,', '平邑县', 1326, '371326', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2921', '549', '0,2129,549,2921,', '贵溪市', 681, '360681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2922', '2906', '0,267,2906,2922,', '金州区', 213, '210213', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2923', '2906', '0,267,2906,2923,', '旅顺口区', 212, '210212', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2924', '2906', '0,267,2906,2924,', '甘井子区', 211, '210211', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2925', '2906', '0,267,2906,2925,', '普兰店区', 214, '210214', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2926', '2929', '0,891,2929,2926,', '阳东区', 1704, '441704', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2927', '2929', '0,891,2929,2927,', '江城区', 1702, '441702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2928', '2949', '0,1561,2949,2928,', '双柏县', 2322, '532322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2929', '891', '0,891,2929,', '阳江市', 1700, '441700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('293', '2901', '0,2901,293,', '临高县', 9024, '469024', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2930', '2906', '0,267,2906,2930,', '长海县', 224, '210224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2931', '2918', '0,1105,2918,2931,', '宁化县', 424, '350424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2932', '2918', '0,1105,2918,2932,', '大田县', 425, '350425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2933', '2918', '0,1105,2918,2933,', '尤溪县', 426, '350426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2934', '2918', '0,1105,2918,2934,', '沙县', 427, '350427', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2935', '2918', '0,1105,2918,2935,', '将乐县', 428, '350428', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2936', '2918', '0,1105,2918,2936,', '泰宁县', 429, '350429', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2937', '2949', '0,1561,2949,2937,', '禄丰县', 2331, '532331', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2938', '2918', '0,1105,2918,2938,', '明溪县', 421, '350421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2939', '2918', '0,1105,2918,2939,', '清流县', 423, '350423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('294', '2901', '0,2901,294,', '澄迈县', 9023, '469023', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2940', '2949', '0,1561,2949,2940,', '武定县', 2329, '532329', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2941', '2949', '0,1561,2949,2941,', '元谋县', 2328, '532328', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2942', '2949', '0,1561,2949,2942,', '永仁县', 2327, '532327', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2943', '2949', '0,1561,2949,2943,', '大姚县', 2326, '532326', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2944', '2949', '0,1561,2949,2944,', '姚安县', 2325, '532325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2945', '2949', '0,1561,2949,2945,', '南华县', 2324, '532324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2946', '2949', '0,1561,2949,2946,', '牟定县', 2323, '532323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2947', '2984', '0,2138,2984,2947,', '润州区', 1111, '321111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2948', '2825', '0,2825,2948,', '眉山市', 1400, '511400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2949', '1561', '0,1561,2949,', '楚雄彝族自治州', 2300, '532300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('295', '2901', '0,2901,295,', '屯昌县', 9022, '469022', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2950', '2929', '0,891,2929,2950,', '阳西县', 1721, '441721', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2951', '2918', '0,1105,2918,2951,', '建宁县', 430, '350430', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2952', '3026', '0,1786,3026,2952,', '禹州市', 1081, '411081', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2953', '3026', '0,1786,3026,2953,', '长葛市', 1082, '411082', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2954', '2984', '0,2138,2984,2954,', '京口区', 1102, '321102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2955', '2840', '0,1970,2840,2955,', '北安市', 1181, '231181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2956', '2840', '0,1970,2840,2956,', '五大连池市', 1182, '231182', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2957', '2887', '0,120,2887,2957,', '桐梓县', 322, '520322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2958', '2887', '0,120,2887,2958,', '绥阳县', 323, '520323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2959', '2887', '0,120,2887,2959,', '正安县', 324, '520324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('296', '2901', '0,2901,296,', '定安县', 9021, '469021', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2960', '2887', '0,120,2887,2960,', '道真仡佬族苗族自治县', 325, '520325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2961', '2887', '0,120,2887,2961,', '务川仡佬族苗族自治县', 326, '520326', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2962', '2887', '0,120,2887,2962,', '凤冈县', 327, '520327', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2963', '2887', '0,120,2887,2963,', '湄潭县', 328, '520328', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2964', '431', '0,431,2964,', '阿克苏地区', 2900, '652900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2965', '2887', '0,120,2887,2965,', '余庆县', 329, '520329', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2966', '2964', '0,431,2964,2966,', '阿克苏市', 2901, '652901', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2967', '3282', '0,3282,2967,', '太原市', 100, '140100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2968', '2887', '0,120,2887,2968,', '习水县', 330, '520330', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2969', '2949', '0,1561,2949,2969,', '楚雄市', 2301, '532301', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('297', '305', '0,1105,305,297,', '海沧区', 205, '350205', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2970', '2967', '0,3282,2967,2970,', '小店区', 105, '140105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2971', '2967', '0,3282,2967,2971,', '迎泽区', 106, '140106', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2972', '2967', '0,3282,2967,2972,', '杏花岭区', 107, '140107', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2973', '2967', '0,3282,2967,2973,', '尖草坪区', 108, '140108', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2974', '3156', '0,986,3156,2974,', '会宁县', 422, '620422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2975', '2967', '0,3282,2967,2975,', '万柏林区', 109, '140109', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2976', '3156', '0,986,3156,2976,', '景泰县', 423, '620423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2977', '2984', '0,2138,2984,2977,', '丹徒区', 1112, '321112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2978', '2980', '0,2129,2980,2978,', '广丰区', 1103, '361103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2979', '2980', '0,2129,2980,2979,', '信州区', 1102, '361102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('298', '264', '0,2900,264,298,', '莒县', 1122, '371122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2980', '2129', '0,2129,2980,', '上饶市', 1100, '361100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2981', '3026', '0,1786,3026,2981,', '襄城县', 1025, '411025', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2982', '3026', '0,1786,3026,2982,', '鄢陵县', 1024, '411024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2983', '2906', '0,267,2906,2983,', '瓦房店市', 281, '210281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2984', '2138', '0,2138,2984,', '镇江市', 1100, '321100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2985', '2906', '0,267,2906,2985,', '庄河市', 283, '210283', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2986', '2988', '0,1561,2988,2986,', '隆阳区', 502, '530502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2987', '2990', '0,1941,2990,2987,', '港口区', 602, '450602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2988', '1561', '0,1561,2988,', '保山市', 500, '530500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2989', '2990', '0,1941,2990,2989,', '防城区', 603, '450603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('299', '305', '0,1105,305,299,', '湖里区', 206, '350206', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2990', '1941', '0,1941,2990,', '防城港市', 600, '450600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2991', '2980', '0,2129,2980,2991,', '弋阳县', 1126, '361126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2992', '2980', '0,2129,2980,2992,', '横峰县', 1125, '361125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2993', '2980', '0,2129,2980,2993,', '铅山县', 1124, '361124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2994', '3002', '0,2825,3002,2994,', '船山区', 903, '510903', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2995', '2980', '0,2129,2980,2995,', '玉山县', 1123, '361123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2996', '3002', '0,2825,3002,2996,', '安居区', 904, '510904', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2997', '2980', '0,2129,2980,2997,', '上饶县', 1121, '361121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2998', '2918', '0,1105,2918,2998,', '永安市', 481, '350481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('2999', '2980', '0,2129,2980,2999,', '万年县', 1129, '361129', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3', '2747', '0,2747,3,', '黄冈市', 1100, '421100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('30', '46', '0,5,46,30,', '灵璧县', 1323, '341323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('300', '420', '0,2825,420,300,', '江油市', 781, '510781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3000', '2980', '0,2129,2980,3000,', '鄱阳县', 1128, '361128', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3001', '2980', '0,2129,2980,3001,', '余干县', 1127, '361127', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3002', '2825', '0,2825,3002,', '遂宁市', 900, '510900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3003', '453', '0,891,453,3003,', '普宁市', 5281, '445281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3004', '2980', '0,2129,2980,3004,', '婺源县', 1130, '361130', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3005', '2990', '0,1941,2990,3005,', '上思县', 621, '450621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3006', '2737', '0,2138,2737,3006,', '启东市', 681, '320681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3007', '3023', '0,2559,3023,3007,', '革吉县', 2525, '542525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3008', '2737', '0,2138,2737,3008,', '如皋市', 682, '320682', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3009', '3023', '0,2559,3023,3009,', '日土县', 2524, '542524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('301', '264', '0,2900,264,301,', '五莲县', 1121, '371121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3010', '3023', '0,2559,3023,3010,', '措勤县', 2527, '542527', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3011', '3023', '0,2559,3023,3011,', '改则县', 2526, '542526', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3012', '3023', '0,2559,3023,3012,', '普兰县', 2521, '542521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3013', '3023', '0,2559,3023,3013,', '噶尔县', 2523, '542523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3014', '3023', '0,2559,3023,3014,', '札达县', 2522, '542522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3015', '1', '0,3015,', '浙江省', 0, '330000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3016', '3002', '0,2825,3002,3016,', '大英县', 923, '510923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3017', '3002', '0,2825,3002,3017,', '蓬溪县', 921, '510921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3018', '3002', '0,2825,3002,3018,', '射洪县', 922, '510922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3019', '453', '0,891,453,3019,', '揭西县', 5222, '445222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('302', '268', '0,121,268,302,', '桑植县', 822, '430822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3020', '453', '0,891,453,3020,', '惠来县', 5224, '445224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3021', '2737', '0,2138,2737,3021,', '海安市', 685, '320685', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3022', '2737', '0,2138,2737,3022,', '海门市', 684, '320684', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3023', '2559', '0,2559,3023,', '阿里地区', 2500, '542500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3024', '485', '0,2747,485,3024,', '赤壁市', 1281, '421281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3025', '2967', '0,3282,2967,3025,', '古交市', 181, '140181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3026', '1786', '0,1786,3026,', '许昌市', 1000, '411000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3027', '3026', '0,1786,3026,3027,', '建安区', 1003, '411003', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3028', '3026', '0,1786,3026,3028,', '魏都区', 1002, '411002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3029', '2980', '0,2129,2980,3029,', '德兴市', 1181, '361181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('303', '268', '0,121,268,303,', '慈利县', 821, '430821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3030', '2988', '0,1561,2988,3030,', '龙陵县', 523, '530523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3031', '2988', '0,1561,2988,3031,', '昌宁县', 524, '530524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3032', '2988', '0,1561,2988,3032,', '施甸县', 521, '530521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3033', '3058', '0,1970,3058,3033,', '五营区', 710, '230710', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3034', '3058', '0,1970,3058,3034,', '上甘岭区', 716, '230716', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3035', '3058', '0,1970,3058,3035,', '红星区', 715, '230715', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3036', '3058', '0,1970,3058,3036,', '乌伊岭区', 714, '230714', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3037', '3058', '0,1970,3058,3037,', '带岭区', 713, '230713', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3038', '3058', '0,1970,3058,3038,', '汤旺河区', 712, '230712', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3039', '3058', '0,1970,3058,3039,', '乌马河区', 711, '230711', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('304', '1561', '0,1561,304,', '迪庆藏族自治州', 3400, '533400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3040', '3117', '0,3282,3117,3040,', '静乐县', 926, '140926', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3041', '3117', '0,3282,3117,3041,', '神池县', 927, '140927', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3042', '3117', '0,3282,3117,3042,', '五寨县', 928, '140928', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3043', '3117', '0,3282,3117,3043,', '岢岚县', 929, '140929', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3044', '3058', '0,1970,3058,3044,', '金山屯区', 709, '230709', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3045', '3058', '0,1970,3058,3045,', '美溪区', 708, '230708', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3046', '2592', '0,2592,3046,', '阿拉善盟', 2900, '152900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3047', '3058', '0,1970,3058,3047,', '新青区', 707, '230707', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3048', '3058', '0,1970,3058,3048,', '翠峦区', 706, '230706', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3049', '3058', '0,1970,3058,3049,', '西林区', 705, '230705', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('305', '1105', '0,1105,305,', '厦门市', 200, '350200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3050', '3117', '0,3282,3117,3050,', '定襄县', 921, '140921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3051', '3058', '0,1970,3058,3051,', '友好区', 704, '230704', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3052', '3117', '0,3282,3117,3052,', '五台县', 922, '140922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3053', '3058', '0,1970,3058,3053,', '南岔区', 703, '230703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3054', '3117', '0,3282,3117,3054,', '代县', 923, '140923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3055', '3058', '0,1970,3058,3055,', '伊春区', 702, '230702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3056', '3117', '0,3282,3117,3056,', '繁峙县', 924, '140924', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3057', '3117', '0,3282,3117,3057,', '宁武县', 925, '140925', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3058', '1970', '0,1970,3058,', '伊春市', 700, '230700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3059', '3117', '0,3282,3117,3059,', '河曲县', 930, '140930', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('306', '305', '0,1105,305,306,', '思明区', 203, '350203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3060', '3117', '0,3282,3117,3060,', '保德县', 931, '140931', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3061', '3117', '0,3282,3117,3061,', '偏关县', 932, '140932', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3062', '1786', '0,1786,3062,', '三门峡市', 1200, '411200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3063', '3062', '0,1786,3062,3063,', '陕州区', 1203, '411203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3064', '3062', '0,1786,3062,3064,', '湖滨区', 1202, '411202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3065', '3046', '0,2592,3046,3065,', '额济纳旗', 2923, '152923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3066', '3046', '0,2592,3046,3066,', '阿拉善右旗', 2922, '152922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3067', '3046', '0,2592,3046,3067,', '阿拉善左旗', 2921, '152921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3068', '3058', '0,1970,3058,3068,', '嘉荫县', 722, '230722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3069', '3092', '0,2559,3092,3069,', '嘉黎县', 621, '540621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('307', '2901', '0,2901,307,', '保亭黎族苗族自治县', 9029, '469029', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3070', '3092', '0,2559,3092,3070,', '比如县', 622, '540622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3071', '3092', '0,2559,3092,3071,', '聂荣县', 623, '540623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3072', '3092', '0,2559,3092,3072,', '安多县', 624, '540624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3073', '3092', '0,2559,3092,3073,', '尼玛县', 629, '540629', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3074', '3092', '0,2559,3092,3074,', '申扎县', 625, '540625', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3075', '3092', '0,2559,3092,3075,', '索县', 626, '540626', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3076', '3092', '0,2559,3092,3076,', '班戈县', 627, '540627', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3077', '3092', '0,2559,3092,3077,', '巴青县', 628, '540628', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3078', '3104', '0,5,3104,3078,', '怀远县', 321, '340321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3079', '3226', '0,121,3226,3079,', '湘乡市', 381, '430381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('308', '1420', '0,2129,1420,308,', '庐山市', 483, '360483', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3080', '3226', '0,121,3226,3080,', '韶山市', 382, '430382', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3081', '3104', '0,5,3104,3081,', '五河县', 322, '340322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3082', '3104', '0,5,3104,3082,', '固镇县', 323, '340323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3083', '1', '0,3083,', '宁夏回族自治区', 0, '640000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3084', '2747', '0,2747,3084,', '武汉市', 100, '420100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3085', '3114', '0,2138,3114,3085,', '灌南县', 724, '320724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3086', '3114', '0,2138,3114,3086,', '东海县', 722, '320722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3087', '3199', '0,1786,3199,3087,', '卫辉市', 781, '410781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3088', '3114', '0,2138,3114,3088,', '灌云县', 723, '320723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3089', '3199', '0,1786,3199,3089,', '辉县市', 782, '410782', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('309', '1420', '0,2129,1420,309,', '瑞昌市', 481, '360481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3090', '3104', '0,5,3104,3090,', '淮上区', 311, '340311', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3091', '3402', '0,782,3402,3091,', '深州市', 1182, '131182', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3092', '2559', '0,2559,3092,', '那曲市', 600, '540600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3093', '3092', '0,2559,3092,3093,', '色尼区', 602, '540602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3094', '3084', '0,2747,3084,3094,', '洪山区', 111, '420111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3095', '3084', '0,2747,3084,3095,', '硚口区', 104, '420104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3096', '3084', '0,2747,3084,3096,', '江汉区', 103, '420103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3097', '3104', '0,5,3104,3097,', '禹会区', 304, '340304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3098', '3084', '0,2747,3084,3098,', '江岸区', 102, '420102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3099', '3084', '0,2747,3084,3099,', '青山区', 107, '420107', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('31', '46', '0,5,46,31,', '泗县', 1324, '341324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('310', '1420', '0,2129,1420,310,', '共青城市', 482, '360482', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3100', '3084', '0,2747,3084,3100,', '武昌区', 106, '420106', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3101', '3084', '0,2747,3084,3101,', '汉阳区', 105, '420105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3102', '3104', '0,5,3104,3102,', '龙子湖区', 302, '340302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3103', '3104', '0,5,3104,3103,', '蚌山区', 303, '340303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3104', '5', '0,5,3104,', '蚌埠市', 300, '340300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3105', '3084', '0,2747,3084,3105,', '江夏区', 115, '420115', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3106', '3084', '0,2747,3084,3106,', '蔡甸区', 114, '420114', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3107', '3114', '0,2138,3114,3107,', '海州区', 706, '320706', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3108', '3084', '0,2747,3084,3108,', '汉南区', 113, '420113', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3109', '3114', '0,2138,3114,3109,', '赣榆区', 707, '320707', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('311', '279', '0,1941,279,311,', '藤县', 422, '450422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3110', '3084', '0,2747,3084,3110,', '东西湖区', 112, '420112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3111', '3084', '0,2747,3084,3111,', '新洲区', 117, '420117', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3112', '3114', '0,2138,3114,3112,', '连云区', 703, '320703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3113', '3084', '0,2747,3084,3113,', '黄陂区', 116, '420116', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3114', '2138', '0,2138,3114,', '连云港市', 700, '320700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3115', '3120', '0,2129,3120,3115,', '青原区', 803, '360803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3116', '3120', '0,2129,3120,3116,', '吉州区', 802, '360802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3117', '3282', '0,3282,3117,', '忻州市', 900, '140900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3118', '3157', '0,5,3157,3118,', '利辛县', 1623, '341623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3119', '3157', '0,5,3157,3119,', '蒙城县', 1622, '341622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('312', '279', '0,1941,279,312,', '苍梧县', 421, '450421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3120', '2129', '0,2129,3120,', '吉安市', 800, '360800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3121', '3117', '0,3282,3117,3121,', '忻府区', 902, '140902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3122', '3157', '0,5,3157,3122,', '涡阳县', 1621, '341621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3123', '3199', '0,1786,3199,3123,', '原阳县', 725, '410725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3124', '3199', '0,1786,3199,3124,', '获嘉县', 724, '410724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3125', '3156', '0,986,3156,3125,', '靖远县', 421, '620421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3126', '3199', '0,1786,3199,3126,', '新乡县', 721, '410721', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3127', '3199', '0,1786,3199,3127,', '封丘县', 727, '410727', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3128', '3199', '0,1786,3199,3128,', '延津县', 726, '410726', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3129', '3199', '0,1786,3199,3129,', '长垣县', 728, '410728', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('313', '2901', '0,2901,313,', '琼中黎族苗族自治县', 9030, '469030', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3130', '3226', '0,121,3226,3130,', '湘潭县', 321, '430321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3131', '3139', '0,996,3139,3131,', '二道江区', 503, '220503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3132', '3120', '0,2129,3120,3132,', '安福县', 829, '360829', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3133', '3120', '0,2129,3120,3133,', '遂川县', 827, '360827', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3134', '3120', '0,2129,3120,3134,', '万安县', 828, '360828', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3135', '3234', '0,782,3234,3135,', '康保县', 723, '130723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3136', '3234', '0,782,3234,3136,', '沽源县', 724, '130724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3137', '3234', '0,782,3234,3137,', '张北县', 722, '130722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3138', '3234', '0,782,3234,3138,', '阳原县', 727, '130727', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3139', '996', '0,996,3139,', '通化市', 500, '220500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('314', '279', '0,1941,279,314,', '蒙山县', 423, '450423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3140', '3234', '0,782,3234,3140,', '怀安县', 728, '130728', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3141', '431', '0,431,3141,', '巴音郭楞蒙古自治州', 2800, '652800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3142', '3234', '0,782,3234,3142,', '尚义县', 725, '130725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3143', '3139', '0,996,3139,3143,', '东昌区', 502, '220502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3144', '3141', '0,431,3141,3144,', '库尔勒市', 2801, '652801', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3145', '3234', '0,782,3234,3145,', '蔚县', 726, '130726', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3146', '3360', '0,3360,3146,', '嘉义市', 900, '830900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3147', '3146', '0,3360,3146,3147,', '东区', 901, '830901', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3148', '3146', '0,3360,3146,3148,', '西区', 902, '830902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3149', '3157', '0,5,3157,3149,', '谯城区', 1602, '341602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('315', '29', '0,2138,29,315,', '溧阳市', 481, '320481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3150', '3058', '0,1970,3058,3150,', '铁力市', 781, '230781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3151', '3120', '0,2129,3120,3151,', '永丰县', 825, '360825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3152', '3120', '0,2129,3120,3152,', '泰和县', 826, '360826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3153', '3120', '0,2129,3120,3153,', '峡江县', 823, '360823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3154', '3120', '0,2129,3120,3154,', '新干县', 824, '360824', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3155', '3120', '0,2129,3120,3155,', '吉安县', 821, '360821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3156', '986', '0,986,3156,', '白银市', 400, '620400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3157', '5', '0,5,3157,', '亳州市', 1600, '341600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3158', '3120', '0,2129,3120,3158,', '吉水县', 822, '360822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3159', '3156', '0,986,3156,3159,', '白银区', 402, '620402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('316', '305', '0,1105,305,316,', '集美区', 211, '350211', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3160', '3156', '0,986,3156,3160,', '平川区', 403, '620403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3161', '3234', '0,782,3234,3161,', '怀来县', 730, '130730', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3162', '3234', '0,782,3234,3162,', '涿鹿县', 731, '130731', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3163', '263', '0,120,263,3163,', '白云区', 113, '520113', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3164', '3234', '0,782,3234,3164,', '赤城县', 732, '130732', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3165', '263', '0,120,263,3165,', '观山湖区', 115, '520115', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3166', '263', '0,120,263,3166,', '开阳县', 121, '520121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3167', '263', '0,120,263,3167,', '息烽县', 122, '520122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3168', '263', '0,120,263,3168,', '修文县', 123, '520123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3169', '304', '0,1561,304,3169,', '维西傈僳族自治县', 3423, '533423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('317', '305', '0,1105,305,317,', '同安区', 212, '350212', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3170', '3120', '0,2129,3120,3170,', '永新县', 830, '360830', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3171', '3141', '0,431,3141,3171,', '且末县', 2825, '652825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3172', '3141', '0,431,3141,3172,', '焉耆回族自治县', 2826, '652826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3173', '3141', '0,431,3141,3173,', '和静县', 2827, '652827', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3174', '3141', '0,431,3141,3174,', '和硕县', 2828, '652828', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3175', '3141', '0,431,3141,3175,', '博湖县', 2829, '652829', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3176', '3139', '0,996,3139,3176,', '通化县', 521, '220521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3177', '3141', '0,431,3141,3177,', '轮台县', 2822, '652822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3178', '3139', '0,996,3139,3178,', '柳河县', 524, '220524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3179', '3141', '0,431,3141,3179,', '尉犁县', 2823, '652823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('318', '305', '0,1105,305,318,', '翔安区', 213, '350213', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3180', '3139', '0,996,3139,3180,', '辉南县', 523, '220523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3181', '3141', '0,431,3141,3181,', '若羌县', 2824, '652824', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3182', '3203', '0,3015,3203,3182,', '岱山县', 921, '330921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3183', '3203', '0,3015,3203,3183,', '嵊泗县', 922, '330922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3184', '3293', '0,1941,3293,3184,', '大化瑶族自治县', 1229, '451229', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3185', '3293', '0,1941,3293,3185,', '都安瑶族自治县', 1228, '451228', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3186', '3293', '0,1941,3293,3186,', '罗城仫佬族自治县', 1225, '451225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3187', '3293', '0,1941,3293,3187,', '东兰县', 1224, '451224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3188', '1970', '0,1970,3188,', '绥化市', 1200, '231200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3189', '3293', '0,1941,3293,3189,', '巴马瑶族自治县', 1227, '451227', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('319', '2901', '0,2901,319,', '万宁市', 9006, '469006', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3190', '3293', '0,1941,3293,3190,', '环江毛南族自治县', 1226, '451226', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3191', '3188', '0,1970,3188,3191,', '北林区', 1202, '231202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3192', '3293', '0,1941,3293,3192,', '南丹县', 1221, '451221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3193', '3293', '0,1941,3293,3193,', '凤山县', 1223, '451223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3194', '3293', '0,1941,3293,3194,', '天峨县', 1222, '451222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3195', '263', '0,120,263,3195,', '清镇市', 181, '520181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3196', '2900', '0,2900,3196,', '聊城市', 1500, '371500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3197', '3196', '0,2900,3196,3197,', '东昌府区', 1502, '371502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3198', '3203', '0,3015,3203,3198,', '普陀区', 903, '330903', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3199', '1786', '0,1786,3199,', '新乡市', 700, '410700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('32', '3', '0,2747,3,32,', '罗田县', 1123, '421123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('320', '2901', '0,2901,320,', '文昌市', 9005, '469005', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3200', '2900', '0,2900,3200,', '青岛市', 200, '370200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3201', '3199', '0,1786,3199,3201,', '卫滨区', 703, '410703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3202', '3199', '0,1786,3199,3202,', '红旗区', 702, '410702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3203', '3015', '0,3015,3203,', '舟山市', 900, '330900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3204', '3203', '0,3015,3203,3204,', '定海区', 902, '330902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3205', '3200', '0,2900,3200,3205,', '市南区', 202, '370202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3206', '3200', '0,2900,3200,3206,', '市北区', 203, '370203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3207', '3199', '0,1786,3199,3207,', '凤泉区', 704, '410704', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3208', '3336', '0,2747,3336,3208,', '汉川市', 984, '420984', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3209', '3336', '0,2747,3336,3209,', '安陆市', 982, '420982', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('321', '2901', '0,2901,321,', '琼海市', 9002, '469002', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3210', '3336', '0,2747,3336,3210,', '应城市', 981, '420981', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3211', '3139', '0,996,3139,3211,', '集安市', 582, '220582', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3212', '3139', '0,996,3139,3212,', '梅河口市', 581, '220581', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3213', '3188', '0,1970,3188,3213,', '望奎县', 1221, '231221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3214', '3188', '0,1970,3188,3214,', '兰西县', 1222, '231222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3215', '3188', '0,1970,3188,3215,', '青冈县', 1223, '231223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3216', '3188', '0,1970,3188,3216,', '庆安县', 1224, '231224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3217', '3188', '0,1970,3188,3217,', '明水县', 1225, '231225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3218', '3188', '0,1970,3188,3218,', '绥棱县', 1226, '231226', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3219', '1105', '0,1105,3219,', '漳州市', 600, '350600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('322', '2901', '0,2901,322,', '五指山市', 9001, '469001', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3220', '3199', '0,1786,3199,3220,', '牧野区', 711, '410711', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3221', '3230', '0,431,3230,3221,', '乌尔禾区', 205, '650205', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3222', '3219', '0,1105,3219,3222,', '芗城区', 602, '350602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3223', '3196', '0,2900,3196,3223,', '阳谷县', 1521, '371521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3224', '3230', '0,431,3230,3224,', '白碱滩区', 204, '650204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3225', '3219', '0,1105,3219,3225,', '龙文区', 603, '350603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3226', '121', '0,121,3226,', '湘潭市', 300, '430300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3227', '3230', '0,431,3230,3227,', '克拉玛依区', 203, '650203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3228', '3230', '0,431,3230,3228,', '独山子区', 202, '650202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3229', '3226', '0,121,3226,3229,', '雨湖区', 302, '430302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('323', '53', '0,2559,53,323,', '错那县', 530, '540530', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3230', '431', '0,431,3230,', '克拉玛依市', 200, '650200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3231', '3226', '0,121,3226,3231,', '岳塘区', 304, '430304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3232', '3234', '0,782,3234,3232,', '桥东区', 702, '130702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3233', '3196', '0,2900,3196,3233,', '高唐县', 1526, '371526', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3234', '782', '0,782,3234,', '张家口市', 700, '130700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3235', '3234', '0,782,3234,3235,', '宣化区', 705, '130705', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3236', '3196', '0,2900,3196,3236,', '茌平县', 1523, '371523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3237', '3234', '0,782,3234,3237,', '下花园区', 706, '130706', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3238', '3196', '0,2900,3196,3238,', '莘县', 1522, '371522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3239', '3234', '0,782,3234,3239,', '桥西区', 703, '130703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('324', '53', '0,2559,53,324,', '浪卡子县', 531, '540531', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3240', '3196', '0,2900,3196,3240,', '冠县', 1525, '371525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3241', '3196', '0,2900,3196,3241,', '东阿县', 1524, '371524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3242', '3234', '0,782,3234,3242,', '崇礼区', 709, '130709', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3243', '3120', '0,2129,3120,3243,', '井冈山市', 881, '360881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3244', '3234', '0,782,3234,3244,', '万全区', 708, '130708', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3245', '3249', '0,2592,3249,3245,', '海南区', 303, '150303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3246', '3117', '0,3282,3117,3246,', '原平市', 981, '140981', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3247', '3249', '0,2592,3249,3247,', '乌达区', 304, '150304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3248', '3249', '0,2592,3249,3248,', '海勃湾区', 302, '150302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3249', '2592', '0,2592,3249,', '乌海市', 300, '150300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('325', '380', '0,3015,380,325,', '庆元县', 1126, '331126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3250', '2900', '0,2900,3250,', '济南市', 100, '370100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3251', '3250', '0,2900,3250,3251,', '历下区', 102, '370102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3252', '3250', '0,2900,3250,3252,', '市中区', 103, '370103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3253', '3250', '0,2900,3250,3253,', '槐荫区', 104, '370104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3254', '3250', '0,2900,3250,3254,', '天桥区', 105, '370105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3255', '3257', '0,418,3257,3255,', '新城区', 102, '610102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3256', '3257', '0,418,3257,3256,', '碑林区', 103, '610103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3257', '418', '0,418,3257,', '西安市', 100, '610100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3258', '3336', '0,2747,3336,3258,', '大悟县', 922, '420922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3259', '3336', '0,2747,3336,3259,', '孝昌县', 921, '420921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('326', '360', '0,3360,360,326,', '士林区', 111, '830111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3260', '267', '0,267,3260,', '鞍山市', 300, '210300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3261', '3336', '0,2747,3336,3261,', '云梦县', 923, '420923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3262', '3260', '0,267,3260,3262,', '立山区', 304, '210304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3263', '3260', '0,267,3260,3263,', '铁西区', 303, '210303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3264', '3260', '0,267,3260,3264,', '铁东区', 302, '210302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3265', '1860', '0,782,1860,3265,', '定州市', 682, '130682', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3266', '1860', '0,782,1860,3266,', '安国市', 683, '130683', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3267', '3280', '0,1105,3280,3267,', '鲤城区', 502, '350502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3268', '3280', '0,1105,3280,3268,', '丰泽区', 503, '350503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3269', '2845', '0,2900,2845,3269,', '宁津县', 1422, '371422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('327', '380', '0,3015,380,327,', '景宁畲族自治县', 1127, '331127', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3270', '1860', '0,782,1860,3270,', '涿州市', 681, '130681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3271', '3280', '0,1105,3280,3271,', '洛江区', 504, '350504', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3272', '3280', '0,1105,3280,3272,', '泉港区', 505, '350505', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3273', '1860', '0,782,1860,3273,', '高碑店市', 684, '130684', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3274', '2845', '0,2900,2845,3274,', '武城县', 1428, '371428', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3275', '2845', '0,2900,2845,3275,', '夏津县', 1427, '371427', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3276', '3344', '0,891,3344,3276,', '南澳县', 523, '440523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3277', '2845', '0,2900,2845,3277,', '临邑县', 1424, '371424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3278', '2845', '0,2900,2845,3278,', '庆云县', 1423, '371423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3279', '2845', '0,2900,2845,3279,', '平原县', 1426, '371426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('328', '360', '0,3360,360,328,', '文山区', 112, '830112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3280', '1105', '0,1105,3280,', '泉州市', 500, '350500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3281', '2845', '0,2900,2845,3281,', '齐河县', 1425, '371425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3282', '1', '0,3282,', '山西省', 0, '140000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3283', '2780', '0,2129,2780,3283,', '瑞金市', 781, '360781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3284', '3260', '0,267,3260,3284,', '千山区', 311, '210311', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3285', '3250', '0,2900,3250,3285,', '平阴县', 124, '370124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3286', '3250', '0,2900,3250,3286,', '商河县', 126, '370126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3287', '3377', '0,891,3377,3287,', '连州市', 1882, '441882', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3288', '3377', '0,891,3377,3288,', '英德市', 1881, '441881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3289', '3260', '0,267,3260,3289,', '岫岩满族自治县', 323, '210323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('329', '380', '0,3015,380,329,', '缙云县', 1122, '331122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3290', '3293', '0,1941,3293,3290,', '宜州区', 1203, '451203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3291', '3293', '0,1941,3293,3291,', '金城江区', 1202, '451202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3292', '3260', '0,267,3260,3292,', '台安县', 321, '210321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3293', '1941', '0,1941,3293,', '河池市', 1200, '451200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3294', '3280', '0,1105,3280,3294,', '安溪县', 524, '350524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3295', '3280', '0,1105,3280,3295,', '永春县', 525, '350525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3296', '3250', '0,2900,3250,3296,', '历城区', 112, '370112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3297', '3280', '0,1105,3280,3297,', '德化县', 526, '350526', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3298', '3250', '0,2900,3250,3298,', '长清区', 113, '370113', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3299', '3364', '0,2138,3364,3299,', '靖江市', 1282, '321282', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('33', '3', '0,2747,3,33,', '红安县', 1122, '421122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('330', '380', '0,3015,380,330,', '遂昌县', 1123, '331123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3300', '3280', '0,1105,3280,3300,', '金门县', 527, '350527', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3301', '3364', '0,2138,3364,3301,', '泰兴市', 1283, '321283', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3302', '3364', '0,2138,3364,3302,', '兴化市', 1281, '321281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3303', '3250', '0,2900,3250,3303,', '章丘区', 114, '370114', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3304', '3250', '0,2900,3250,3304,', '济阳区', 115, '370115', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3305', '3280', '0,1105,3280,3305,', '惠安县', 521, '350521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3306', '3250', '0,2900,3250,3306,', '莱芜区', 116, '370116', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3307', '3250', '0,2900,3250,3307,', '钢城区', 117, '370117', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3308', '3319', '0,2901,3319,3308,', '美兰区', 108, '460108', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3309', '3319', '0,2901,3319,3309,', '琼山区', 107, '460107', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('331', '380', '0,3015,380,331,', '松阳县', 1124, '331124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3310', '3319', '0,2901,3319,3310,', '龙华区', 106, '460106', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3311', '3319', '0,2901,3319,3311,', '秀英区', 105, '460105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3312', '1860', '0,782,1860,3312,', '望都县', 631, '130631', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3313', '3377', '0,891,3377,3313,', '连南瑶族自治县', 1826, '441826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3314', '1860', '0,782,1860,3314,', '安新县', 632, '130632', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3315', '3377', '0,891,3377,3315,', '连山壮族瑶族自治县', 1825, '441825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3316', '1860', '0,782,1860,3316,', '涞源县', 630, '130630', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3317', '3377', '0,891,3377,3317,', '阳山县', 1823, '441823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3318', '1860', '0,782,1860,3318,', '蠡县', 635, '130635', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3319', '2901', '0,2901,3319,', '海口市', 100, '460100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('332', '380', '0,3015,380,332,', '云和县', 1125, '331125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3320', '1860', '0,782,1860,3320,', '顺平县', 636, '130636', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3321', '3377', '0,891,3377,3321,', '佛冈县', 1821, '441821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3322', '1860', '0,782,1860,3322,', '易县', 633, '130633', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3323', '1860', '0,782,1860,3323,', '曲阳县', 634, '130634', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3324', '1860', '0,782,1860,3324,', '博野县', 637, '130637', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3325', '1860', '0,782,1860,3325,', '雄县', 638, '130638', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3326', '3337', '0,120,3337,3326,', '水城县', 221, '520221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3327', '3188', '0,1970,3188,3327,', '安达市', 1281, '231281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3328', '3188', '0,1970,3188,3328,', '肇东市', 1282, '231282', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3329', '3188', '0,1970,3188,3329,', '海伦市', 1283, '231283', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('333', '2901', '0,2901,333,', '东方市', 9007, '469007', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3330', '91', '0,986,91,3330,', '永昌县', 321, '620321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3331', '3344', '0,891,3344,3331,', '澄海区', 515, '440515', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3332', '3344', '0,891,3344,3332,', '潮南区', 514, '440514', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3333', '3344', '0,891,3344,3333,', '潮阳区', 513, '440513', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3334', '3344', '0,891,3344,3334,', '濠江区', 512, '440512', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3335', '3344', '0,891,3344,3335,', '金平区', 511, '440511', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3336', '2747', '0,2747,3336,', '孝感市', 900, '420900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3337', '120', '0,120,3337,', '六盘水市', 200, '520200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3338', '3336', '0,2747,3336,3338,', '孝南区', 902, '420902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3339', '3260', '0,267,3260,3339,', '海城市', 381, '210381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('334', '360', '0,3360,360,334,', '内湖区', 110, '830110', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3340', '3344', '0,891,3344,3340,', '龙湖区', 507, '440507', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3341', '2845', '0,2900,2845,3341,', '禹城市', 1482, '371482', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3342', '2845', '0,2900,2845,3342,', '乐陵市', 1481, '371481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3343', '3337', '0,120,3337,3343,', '钟山区', 201, '520201', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3344', '891', '0,891,3344,', '汕头市', 500, '440500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3345', '3337', '0,120,3337,3345,', '六枝特区', 203, '520203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3346', '3412', '0,3015,3412,3346,', '建德市', 182, '330182', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3347', '91', '0,986,91,3347,', '金川区', 302, '620302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3348', '3402', '0,782,3402,3348,', '武强县', 1123, '131123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3349', '3402', '0,782,3402,3349,', '武邑县', 1122, '131122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('335', '383', '0,1561,383,335,', '宾川县', 2924, '532924', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3350', '3402', '0,782,3402,3350,', '枣强县', 1121, '131121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3351', '3402', '0,782,3402,3351,', '景县', 1127, '131127', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3352', '3402', '0,782,3402,3352,', '故城县', 1126, '131126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3353', '3402', '0,782,3402,3353,', '安平县', 1125, '131125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3354', '3402', '0,782,3402,3354,', '饶阳县', 1124, '131124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3355', '81', '0,431,81,3355,', '洛浦县', 3224, '653224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3356', '81', '0,431,81,3356,', '策勒县', 3225, '653225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3357', '81', '0,431,81,3357,', '于田县', 3226, '653226', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3358', '3402', '0,782,3402,3358,', '阜城县', 1128, '131128', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3359', '81', '0,431,81,3359,', '民丰县', 3227, '653227', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('336', '360', '0,3360,360,336,', '南港区', 108, '830108', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3360', '1', '0,3360,', '台湾省', 0, '830000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3361', '3364', '0,2138,3364,3361,', '姜堰区', 1204, '321204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3362', '3364', '0,2138,3364,3362,', '海陵区', 1202, '321202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3363', '3364', '0,2138,3364,3363,', '高港区', 1203, '321203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3364', '2138', '0,2138,3364,', '泰州市', 1200, '321200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3365', '2700', '0,891,2700,3365,', '罗定市', 5381, '445381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3366', '3280', '0,1105,3280,3366,', '石狮市', 581, '350581', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3367', '3280', '0,1105,3280,3367,', '晋江市', 582, '350582', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3368', '3280', '0,1105,3280,3368,', '南安市', 583, '350583', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3369', '3434', '0,1941,3434,3369,', '浦北县', 722, '450722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('337', '383', '0,1561,383,337,', '祥云县', 2923, '532923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3370', '2147', '0,2147,3370,', '黄南藏族自治州', 2300, '632300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3371', '81', '0,431,81,3371,', '和田县', 3221, '653221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3372', '81', '0,431,81,3372,', '墨玉县', 3222, '653222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3373', '81', '0,431,81,3373,', '皮山县', 3223, '653223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3374', '3434', '0,1941,3434,3374,', '灵山县', 721, '450721', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3375', '3377', '0,891,3377,3375,', '清新区', 1803, '441803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3376', '3377', '0,891,3377,3376,', '清城区', 1802, '441802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3377', '891', '0,891,3377,', '清远市', 1800, '441800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3378', '3092', '0,2559,3092,3378,', '双湖县', 630, '540630', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3379', '3370', '0,2147,3370,3379,', '泽库县', 2323, '632323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('338', '360', '0,3360,360,338,', '北投区', 109, '830109', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3380', '3370', '0,2147,3370,3380,', '尖扎县', 2322, '632322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3381', '3370', '0,2147,3370,3381,', '同仁县', 2321, '632321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3382', '3412', '0,3015,3412,3382,', '淳安县', 127, '330127', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3383', '2735', '0,2747,2735,3383,', '广水市', 1381, '421381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3384', '3370', '0,2147,3370,3384,', '河南蒙古族自治县', 2324, '632324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3385', '3412', '0,3015,3412,3385,', '桐庐县', 122, '330122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3386', '1786', '0,1786,3386,', '漯河市', 1100, '411100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3387', '3386', '0,1786,3386,3387,', '源汇区', 1102, '411102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3388', '3389', '0,2825,3389,3388,', '利州区', 802, '510802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3389', '2825', '0,2825,3389,', '广元市', 800, '510800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('339', '383', '0,1561,383,339,', '漾濞彝族自治县', 2922, '532922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3390', '3386', '0,1786,3386,3390,', '召陵区', 1104, '411104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3391', '3386', '0,1786,3386,3391,', '郾城区', 1103, '411103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3392', '3412', '0,3015,3412,3392,', '余杭区', 110, '330110', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3393', '3412', '0,3015,3412,3393,', '富阳区', 111, '330111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3394', '3412', '0,3015,3412,3394,', '临安区', 112, '330112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3395', '3433', '0,1561,3433,3395,', '峨山彝族自治县', 426, '530426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3396', '3433', '0,1561,3433,3396,', '新平彝族傣族自治县', 427, '530427', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3397', '3433', '0,1561,3433,3397,', '华宁县', 424, '530424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3398', '3433', '0,1561,3433,3398,', '易门县', 425, '530425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3399', '3433', '0,1561,3433,3399,', '澄江县', 422, '530422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('34', '3', '0,2747,3,34,', '团风县', 1121, '421121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('340', '360', '0,3360,360,340,', '万华区', 104, '830104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3400', '3433', '0,1561,3433,3400,', '通海县', 423, '530423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3401', '3433', '0,1561,3433,3401,', '元江哈尼族彝族傣族自治县', 428, '530428', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3402', '782', '0,782,3402,', '衡水市', 1100, '131100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3403', '3412', '0,3015,3412,3403,', '滨江区', 108, '330108', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3404', '3402', '0,782,3402,3404,', '冀州区', 1103, '131103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3405', '3412', '0,3015,3412,3405,', '萧山区', 109, '330109', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3406', '3402', '0,782,3402,3406,', '桃城区', 1102, '131102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3407', '3412', '0,3015,3412,3407,', '下城区', 103, '330103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3408', '3412', '0,3015,3412,3408,', '江干区', 104, '330104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3409', '3412', '0,3015,3412,3409,', '拱墅区', 105, '330105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('341', '431', '0,431,341,', '喀什地区', 3100, '653100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3410', '3412', '0,3015,3412,3410,', '西湖区', 106, '330106', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3411', '3257', '0,418,3257,3411,', '高陵区', 117, '610117', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3412', '3015', '0,3015,3412,', '杭州市', 100, '330100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3413', '3257', '0,418,3257,3413,', '鄠邑区', 118, '610118', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3414', '3257', '0,418,3257,3414,', '临潼区', 115, '610115', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3415', '3412', '0,3015,3412,3415,', '上城区', 102, '330102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3416', '3257', '0,418,3257,3416,', '长安区', 116, '610116', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3417', '3257', '0,418,3257,3417,', '周至县', 124, '610124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3418', '3257', '0,418,3257,3418,', '蓝田县', 122, '610122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3419', '3386', '0,1786,3386,3419,', '临颍县', 1122, '411122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('342', '360', '0,3360,360,342,', '信义区', 105, '830105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3420', '3386', '0,1786,3386,3420,', '舞阳县', 1121, '411121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3421', '3389', '0,2825,3389,3421,', '旺苍县', 821, '510821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3422', '3389', '0,2825,3389,3422,', '苍溪县', 824, '510824', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3423', '3440', '0,1970,3440,3423,', '郊区', 811, '230811', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3424', '3389', '0,2825,3389,3424,', '青川县', 822, '510822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3425', '3389', '0,2825,3389,3425,', '剑阁县', 823, '510823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3426', '3257', '0,418,3257,3426,', '莲湖区', 104, '610104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3427', '3257', '0,418,3257,3427,', '雁塔区', 113, '610113', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3428', '3257', '0,418,3257,3428,', '阎良区', 114, '610114', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3429', '3433', '0,1561,3433,3429,', '红塔区', 402, '530402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('343', '341', '0,431,341,343,', '喀什市', 3101, '653101', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3430', '3257', '0,418,3257,3430,', '灞桥区', 111, '610111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3431', '3433', '0,1561,3433,3431,', '江川区', 403, '530403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3432', '3257', '0,418,3257,3432,', '未央区', 112, '610112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3433', '1561', '0,1561,3433,', '玉溪市', 400, '530400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3434', '1941', '0,1941,3434,', '钦州市', 700, '450700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3435', '3434', '0,1941,3434,3435,', '钦北区', 703, '450703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3436', '3434', '0,1941,3434,3436,', '钦南区', 702, '450702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3437', '3440', '0,1970,3440,3437,', '东风区', 805, '230805', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3438', '3440', '0,1970,3440,3438,', '前进区', 804, '230804', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3439', '3440', '0,1970,3440,3439,', '向阳区', 803, '230803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('344', '360', '0,3360,360,344,', '松山区', 106, '830106', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3440', '1970', '0,1970,3440,', '佳木斯市', 800, '230800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3441', '3389', '0,2825,3389,3441,', '昭化区', 811, '510811', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('3442', '3389', '0,2825,3389,3442,', '朝天区', 812, '510812', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('345', '360', '0,3360,360,345,', '大安区', 107, '830107', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('346', '383', '0,1561,383,346,', '云龙县', 2929, '532929', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('347', '383', '0,1561,383,347,', '永平县', 2928, '532928', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('348', '383', '0,1561,383,348,', '巍山彝族回族自治县', 2927, '532927', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('349', '383', '0,1561,383,349,', '南涧彝族自治县', 2926, '532926', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('35', '20', '0,2592,20,35,', '乌审旗', 626, '150626', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('350', '383', '0,1561,383,350,', '弥渡县', 2925, '532925', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('351', '252', '0,267,252,351,', '凌源市', 1382, '211382', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('352', '53', '0,2559,53,352,', '贡嘎县', 522, '540522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('353', '252', '0,267,252,353,', '北票市', 1381, '211381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('354', '53', '0,2559,53,354,', '桑日县', 523, '540523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('355', '53', '0,2559,53,355,', '琼结县', 524, '540524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('356', '53', '0,2559,53,356,', '曲松县', 525, '540525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('357', '1222', '0,2747,1222,357,', '石首市', 1081, '421081', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('358', '53', '0,2559,53,358,', '扎囊县', 521, '540521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('359', '341', '0,431,341,359,', '莎车县', 3125, '653125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('36', '3', '0,2747,3,36,', '黄梅县', 1127, '421127', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('360', '3360', '0,3360,360,', '台北市', 100, '830100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('361', '341', '0,431,341,361,', '叶城县', 3126, '653126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('362', '360', '0,3360,360,362,', '中正区', 101, '830101', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('363', '341', '0,431,341,363,', '麦盖提县', 3127, '653127', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('364', '360', '0,3360,360,364,', '大同区', 102, '830102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('365', '1222', '0,2747,1222,365,', '洪湖市', 1083, '421083', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('366', '341', '0,431,341,366,', '岳普湖县', 3128, '653128', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('367', '360', '0,3360,360,367,', '中山区', 103, '830103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('368', '53', '0,2559,53,368,', '措美县', 526, '540526', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('369', '341', '0,431,341,369,', '伽师县', 3129, '653129', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('37', '20', '0,2592,20,37,', '伊金霍洛旗', 627, '150627', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('370', '53', '0,2559,53,370,', '洛扎县', 527, '540527', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('371', '53', '0,2559,53,371,', '加查县', 528, '540528', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('372', '1222', '0,2747,1222,372,', '松滋市', 1087, '421087', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('373', '53', '0,2559,53,373,', '隆子县', 529, '540529', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('374', '341', '0,431,341,374,', '巴楚县', 3130, '653130', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('375', '380', '0,3015,380,375,', '青田县', 1121, '331121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('376', '341', '0,431,341,376,', '塔什库尔干塔吉克自治县', 3131, '653131', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('377', '236', '0,782,236,377,', '晋州市', 183, '130183', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('378', '236', '0,782,236,378,', '新乐市', 184, '130184', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('379', '236', '0,782,236,379,', '辛集市', 181, '130181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('38', '3', '0,2747,3,38,', '蕲春县', 1126, '421126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('380', '3015', '0,3015,380,', '丽水市', 1100, '331100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('381', '380', '0,3015,380,381,', '莲都区', 1102, '331102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('382', '383', '0,1561,383,382,', '大理市', 2901, '532901', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('383', '1561', '0,1561,383,', '大理白族自治州', 2900, '532900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('384', '341', '0,431,341,384,', '疏附县', 3121, '653121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('385', '341', '0,431,341,385,', '疏勒县', 3122, '653122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('386', '2147', '0,2147,386,', '海北藏族自治州', 2200, '632200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('387', '341', '0,431,341,387,', '英吉沙县', 3123, '653123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('388', '341', '0,431,341,388,', '泽普县', 3124, '653124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('389', '236', '0,782,236,389,', '鹿泉区', 110, '130110', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('39', '20', '0,2592,20,39,', '鄂托克旗', 624, '150624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('390', '236', '0,782,236,390,', '栾城区', 111, '130111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('391', '1222', '0,2747,1222,391,', '江陵县', 1024, '421024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('392', '1222', '0,2747,1222,392,', '监利县', 1023, '421023', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('393', '1222', '0,2747,1222,393,', '公安县', 1022, '421022', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('394', '236', '0,782,236,394,', '井陉县', 121, '130121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('395', '236', '0,782,236,395,', '行唐县', 125, '130125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('396', '236', '0,782,236,396,', '灵寿县', 126, '130126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('397', '236', '0,782,236,397,', '正定县', 123, '130123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('398', '236', '0,782,236,398,', '赞皇县', 129, '130129', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('399', '236', '0,782,236,399,', '高邑县', 127, '130127', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('4', '14', '0,431,14,4,', '乌鲁木齐县', 121, '650121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('40', '3', '0,2747,3,40,', '浠水县', 1125, '421125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('400', '236', '0,782,236,400,', '深泽县', 128, '130128', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('401', '407', '0,1561,407,401,', '沾益区', 303, '530303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('402', '407', '0,1561,407,402,', '马龙区', 304, '530304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('403', '386', '0,2147,386,403,', '刚察县', 2224, '632224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('404', '407', '0,1561,407,404,', '麒麟区', 302, '530302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('405', '386', '0,2147,386,405,', '海晏县', 2223, '632223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('406', '386', '0,2147,386,406,', '祁连县', 2222, '632222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('407', '1561', '0,1561,407,', '曲靖市', 300, '530300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('408', '386', '0,2147,386,408,', '门源回族自治县', 2221, '632221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('409', '1271', '0,1786,1271,409,', '偃师市', 381, '410381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('41', '20', '0,2592,20,41,', '杭锦旗', 625, '150625', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('410', '236', '0,782,236,410,', '元氏县', 132, '130132', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('411', '236', '0,782,236,411,', '赵县', 133, '130133', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('412', '236', '0,782,236,412,', '无极县', 130, '130130', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('413', '236', '0,782,236,413,', '平山县', 131, '130131', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('414', '420', '0,2825,420,414,', '安州区', 705, '510705', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('415', '383', '0,1561,383,415,', '鹤庆县', 2932, '532932', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('416', '383', '0,1561,383,416,', '剑川县', 2931, '532931', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('417', '383', '0,1561,383,417,', '洱源县', 2930, '532930', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('418', '1', '0,418,', '陕西省', 0, '610000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('419', '29', '0,2138,29,419,', '武进区', 412, '320412', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('42', '3', '0,2747,3,42,', '英山县', 1124, '421124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('420', '2825', '0,2825,420,', '绵阳市', 700, '510700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('421', '29', '0,2138,29,421,', '金坛区', 413, '320413', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('422', '29', '0,2138,29,422,', '新北区', 411, '320411', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('423', '420', '0,2825,420,423,', '游仙区', 704, '510704', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('424', '420', '0,2825,420,424,', '涪城区', 703, '510703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('425', '571', '0,2825,571,425,', '资中县', 1025, '511025', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('426', '571', '0,2825,571,426,', '威远县', 1024, '511024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('427', '485', '0,2747,485,427,', '通城县', 1222, '421222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('428', '485', '0,2747,485,428,', '嘉鱼县', 1221, '421221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('429', '447', '0,5,447,429,', '肥东县', 122, '340122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('43', '20', '0,2592,20,43,', '准格尔旗', 622, '150622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('430', '527', '0,121,527,430,', '浏阳市', 181, '430181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('431', '1', '0,431,', '新疆维吾尔自治区', 0, '650000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('432', '447', '0,5,447,432,', '肥西县', 123, '340123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('433', '447', '0,5,447,433,', '长丰县', 121, '340121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('434', '527', '0,121,527,434,', '宁乡市', 182, '430182', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('435', '447', '0,5,447,435,', '庐江县', 124, '340124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('436', '571', '0,2825,571,436,', '东兴区', 1011, '511011', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('437', '485', '0,2747,485,437,', '通山县', 1224, '421224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('438', '485', '0,2747,485,438,', '崇阳县', 1223, '421223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('439', '447', '0,5,447,439,', '包河区', 111, '340111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('44', '20', '0,2592,20,44,', '鄂托克前旗', 623, '150623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('440', '521', '0,1786,521,440,', '林州市', 581, '410581', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('441', '2900', '0,2900,441,', '济宁市', 800, '370800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('442', '522', '0,3015,522,442,', '兰溪市', 781, '330781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('443', '522', '0,3015,522,443,', '义乌市', 782, '330782', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('444', '522', '0,3015,522,444,', '东阳市', 783, '330783', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('445', '522', '0,3015,522,445,', '永康市', 784, '330784', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('446', '453', '0,891,453,446,', '揭东区', 5203, '445203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('447', '5', '0,5,447,', '合肥市', 100, '340100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('448', '447', '0,5,447,448,', '蜀山区', 104, '340104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('449', '447', '0,5,447,449,', '瑶海区', 102, '340102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('45', '20', '0,2592,20,45,', '达拉特旗', 621, '150621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('450', '447', '0,5,447,450,', '庐阳区', 103, '340103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('451', '782', '0,782,451,', '沧州市', 900, '130900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('452', '451', '0,782,451,452,', '运河区', 903, '130903', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('453', '891', '0,891,453,', '揭阳市', 5200, '445200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('454', '453', '0,891,453,454,', '榕城区', 5202, '445202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('455', '451', '0,782,451,455,', '新华区', 902, '130902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('456', '463', '0,2138,463,456,', '姑苏区', 508, '320508', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('457', '463', '0,2138,463,457,', '吴江区', 509, '320509', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('458', '463', '0,2138,463,458,', '吴中区', 506, '320506', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('459', '461', '0,2592,461,459,', '科尔沁区', 502, '150502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('46', '5', '0,5,46,', '宿州市', 1300, '341300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('460', '463', '0,2138,463,460,', '相城区', 507, '320507', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('461', '2592', '0,2592,461,', '通辽市', 500, '150500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('462', '463', '0,2138,463,462,', '虎丘区', 505, '320505', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('463', '2138', '0,2138,463,', '苏州市', 500, '320500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('464', '521', '0,1786,521,464,', '内黄县', 527, '410527', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('465', '521', '0,1786,521,465,', '滑县', 526, '410526', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('466', '521', '0,1786,521,466,', '汤阴县', 523, '410523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('467', '521', '0,1786,521,467,', '安阳县', 522, '410522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('468', '470', '0,267,470,468,', '新邱区', 903, '210903', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('469', '470', '0,267,470,469,', '海州区', 902, '210902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('47', '51', '0,121,51,47,', '吉首市', 3101, '433101', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('470', '267', '0,267,470,', '阜新市', 900, '210900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('471', '441', '0,2900,441,471,', '微山县', 826, '370826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('472', '441', '0,2900,441,472,', '鱼台县', 827, '370827', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('473', '470', '0,267,470,473,', '清河门区', 905, '210905', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('474', '441', '0,2900,441,474,', '金乡县', 828, '370828', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('475', '470', '0,267,470,475,', '太平区', 904, '210904', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('476', '441', '0,2900,441,476,', '嘉祥县', 829, '370829', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('477', '441', '0,2900,441,477,', '任城区', 811, '370811', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('478', '441', '0,2900,441,478,', '兖州区', 812, '370812', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('479', '1970', '0,1970,479,', '双鸭山市', 500, '230500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('48', '57', '0,1786,57,48,', '汝州市', 482, '410482', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('480', '470', '0,267,470,480,', '细河区', 911, '210911', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('481', '479', '0,1970,479,481,', '宝山区', 506, '230506', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('482', '479', '0,1970,479,482,', '四方台区', 505, '230505', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('483', '479', '0,1970,479,483,', '岭东区', 503, '230503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('484', '479', '0,1970,479,484,', '尖山区', 502, '230502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('485', '2747', '0,2747,485,', '咸宁市', 1200, '421200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('486', '571', '0,2825,571,486,', '隆昌市', 1083, '511083', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('487', '470', '0,267,470,487,', '彰武县', 922, '210922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('488', '470', '0,267,470,488,', '阜新蒙古族自治县', 921, '210921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('489', '574', '0,1941,574,489,', '靖西市', 1081, '451081', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('49', '46', '0,5,46,49,', '埇桥区', 1302, '341302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('490', '441', '0,2900,441,490,', '汶上县', 830, '370830', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('491', '441', '0,2900,441,491,', '泗水县', 831, '370831', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('492', '441', '0,2900,441,492,', '梁山县', 832, '370832', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('493', '479', '0,1970,479,493,', '宝清县', 523, '230523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('494', '479', '0,1970,479,494,', '友谊县', 522, '230522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('495', '479', '0,1970,479,495,', '集贤县', 521, '230521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('496', '485', '0,2747,485,496,', '咸安区', 1202, '421202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('497', '479', '0,1970,479,497,', '饶河县', 524, '230524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('498', '522', '0,3015,522,498,', '磐安县', 727, '330727', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('499', '574', '0,1941,574,499,', '西林县', 1030, '451030', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('5', '1', '0,5,', '安徽省', 0, '340000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('50', '57', '0,1786,57,50,', '舞钢市', 481, '410481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('500', '574', '0,1941,574,500,', '隆林各族自治县', 1031, '451031', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('501', '522', '0,3015,522,501,', '武义县', 723, '330723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('502', '522', '0,3015,522,502,', '浦江县', 726, '330726', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('503', '961', '0,1561,961,503,', '安宁市', 181, '530181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('504', '574', '0,1941,574,504,', '凌云县', 1027, '451027', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('505', '574', '0,1941,574,505,', '那坡县', 1026, '451026', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('506', '574', '0,1941,574,506,', '田林县', 1029, '451029', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('507', '574', '0,1941,574,507,', '乐业县', 1028, '451028', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('508', '574', '0,1941,574,508,', '平果县', 1023, '451023', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('509', '574', '0,1941,574,509,', '田东县', 1022, '451022', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('51', '121', '0,121,51,', '湘西土家族苗族自治州', 3100, '433100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('510', '574', '0,1941,574,510,', '德保县', 1024, '451024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('511', '574', '0,1941,574,511,', '田阳县', 1021, '451021', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('512', '521', '0,1786,521,512,', '北关区', 503, '410503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('513', '527', '0,121,527,513,', '望城区', 112, '430112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('514', '441', '0,2900,441,514,', '曲阜市', 881, '370881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('515', '521', '0,1786,521,515,', '文峰区', 502, '410502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('516', '527', '0,121,527,516,', '雨花区', 111, '430111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('517', '521', '0,1786,521,517,', '殷都区', 505, '410505', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('518', '441', '0,2900,441,518,', '邹城市', 883, '370883', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('519', '522', '0,3015,522,519,', '婺城区', 702, '330702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('52', '57', '0,1786,57,52,', '石龙区', 404, '410404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('520', '522', '0,3015,522,520,', '金东区', 703, '330703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('521', '1786', '0,1786,521,', '安阳市', 500, '410500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('522', '3015', '0,3015,522,', '金华市', 700, '330700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('523', '521', '0,1786,521,523,', '龙安区', 506, '410506', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('524', '558', '0,418,558,524,', '清涧县', 830, '610830', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('525', '558', '0,418,558,525,', '子洲县', 831, '610831', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('526', '527', '0,121,527,526,', '长沙县', 121, '430121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('527', '121', '0,121,527,', '长沙市', 100, '430100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('528', '527', '0,121,527,528,', '天心区', 103, '430103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('529', '527', '0,121,527,529,', '芙蓉区', 102, '430102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('53', '2559', '0,2559,53,', '山南市', 500, '540500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('530', '451', '0,782,451,530,', '黄骅市', 983, '130983', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('531', '527', '0,121,527,531,', '开福区', 105, '430105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('532', '558', '0,418,558,532,', '吴堡县', 829, '610829', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('533', '451', '0,782,451,533,', '河间市', 984, '130984', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('534', '527', '0,121,527,534,', '岳麓区', 104, '430104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('535', '451', '0,782,451,535,', '泊头市', 981, '130981', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('536', '558', '0,418,558,536,', '米脂县', 827, '610827', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('537', '451', '0,782,451,537,', '任丘市', 982, '130982', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('538', '558', '0,418,558,538,', '佳县', 828, '610828', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('539', '558', '0,418,558,539,', '定边县', 825, '610825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('54', '57', '0,1786,57,54,', '卫东区', 403, '410403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('540', '558', '0,418,558,540,', '绥德县', 826, '610826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('541', '558', '0,418,558,541,', '靖边县', 824, '610824', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('542', '558', '0,418,558,542,', '府谷县', 822, '610822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('543', '3282', '0,3282,543,', '阳泉市', 300, '140300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('544', '543', '0,3282,543,544,', '城区', 302, '140302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('545', '543', '0,3282,543,545,', '矿区', 303, '140303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('546', '549', '0,2129,549,546,', '余江区', 603, '360603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('547', '461', '0,2592,461,547,', '霍林郭勒市', 581, '150581', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('548', '549', '0,2129,549,548,', '月湖区', 602, '360602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('549', '2129', '0,2129,549,', '鹰潭市', 600, '360600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('55', '53', '0,2559,53,55,', '乃东区', 502, '540502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('550', '451', '0,782,451,550,', '沧县', 921, '130921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('551', '558', '0,418,558,551,', '横山区', 803, '610803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('552', '451', '0,782,451,552,', '青县', 922, '130922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('553', '996', '0,996,553,', '四平市', 300, '220300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('554', '558', '0,418,558,554,', '榆阳区', 802, '610802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('555', '451', '0,782,451,555,', '盐山县', 925, '130925', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('556', '553', '0,996,553,556,', '铁西区', 302, '220302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('557', '451', '0,782,451,557,', '肃宁县', 926, '130926', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('558', '418', '0,418,558,', '榆林市', 800, '610800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('559', '451', '0,782,451,559,', '东光县', 923, '130923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('56', '2747', '0,2747,56,', '神农架林区', 9021, '429021', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('560', '451', '0,782,451,560,', '海兴县', 924, '130924', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('561', '553', '0,996,553,561,', '铁东区', 303, '220303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('562', '451', '0,782,451,562,', '献县', 929, '130929', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('563', '451', '0,782,451,563,', '南皮县', 927, '130927', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('564', '461', '0,2592,461,564,', '奈曼旗', 525, '150525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('565', '451', '0,782,451,565,', '吴桥县', 928, '130928', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('566', '461', '0,2592,461,566,', '扎鲁特旗', 526, '150526', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('567', '461', '0,2592,461,567,', '开鲁县', 523, '150523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('568', '461', '0,2592,461,568,', '库伦旗', 524, '150524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('569', '461', '0,2592,461,569,', '科尔沁左翼中旗', 521, '150521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('57', '1786', '0,1786,57,', '平顶山市', 400, '410400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('570', '461', '0,2592,461,570,', '科尔沁左翼后旗', 522, '150522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('571', '2825', '0,2825,571,', '内江市', 1000, '511000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('572', '571', '0,2825,571,572,', '市中区', 1002, '511002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('573', '451', '0,782,451,573,', '孟村回族自治县', 930, '130930', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('574', '1941', '0,1941,574,', '百色市', 1000, '451000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('575', '574', '0,1941,574,575,', '右江区', 1002, '451002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('576', '553', '0,996,553,576,', '梨树县', 322, '220322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('577', '553', '0,996,553,577,', '伊通满族自治县', 323, '220323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('578', '671', '0,891,671,578,', '东源县', 1625, '441625', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('579', '671', '0,891,671,579,', '和平县', 1624, '441624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('58', '57', '0,1786,57,58,', '新华区', 402, '410402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('580', '671', '0,891,671,580,', '连平县', 1623, '441623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('581', '671', '0,891,671,581,', '龙川县', 1622, '441622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('582', '671', '0,891,671,582,', '紫金县', 1621, '441621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('583', '587', '0,1970,587,583,', '西安区', 1005, '231005', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('584', '587', '0,1970,587,584,', '爱民区', 1004, '231004', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('585', '587', '0,1970,587,585,', '阳明区', 1003, '231003', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('586', '587', '0,1970,587,586,', '东安区', 1002, '231002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('587', '1970', '0,1970,587,', '牡丹江市', 1000, '231000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('588', '2825', '0,2825,588,', '德阳市', 600, '510600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('589', '588', '0,2825,588,589,', '旌阳区', 603, '510603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('59', '63', '0,2900,63,59,', '潍城区', 702, '370702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('590', '588', '0,2825,588,590,', '罗江区', 604, '510604', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('591', '120', '0,120,591,', '黔东南苗族侗族自治州', 2600, '522600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('592', '591', '0,120,591,592,', '凯里市', 2601, '522601', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('593', '698', '0,2592,698,593,', '突泉县', 2224, '152224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('594', '267', '0,267,594,', '葫芦岛市', 1400, '211400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('595', '797', '0,2825,797,595,', '通江县', 1921, '511921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('596', '698', '0,2592,698,596,', '扎赉特旗', 2223, '152223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('597', '698', '0,2592,698,597,', '科尔沁右翼中旗', 2222, '152222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('598', '698', '0,2592,698,598,', '科尔沁右翼前旗', 2221, '152221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('599', '594', '0,267,594,599,', '南票区', 1404, '211404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('6', '14', '0,431,14,6,', '达坂城区', 107, '650107', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('60', '63', '0,2900,63,60,', '寒亭区', 703, '370703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('600', '594', '0,267,594,600,', '龙港区', 1403, '211403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('601', '797', '0,2825,797,601,', '南江县', 1922, '511922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('602', '594', '0,267,594,602,', '连山区', 1402, '211402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('603', '797', '0,2825,797,603,', '平昌县', 1923, '511923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('604', '633', '0,986,633,604,', '永登县', 121, '620121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('605', '633', '0,986,633,605,', '皋兰县', 122, '620122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('606', '633', '0,986,633,606,', '榆中县', 123, '620123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('607', '626', '0,891,626,607,', '光明区', 311, '440311', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('608', '626', '0,891,626,608,', '坪山区', 310, '440310', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('609', '553', '0,996,553,609,', '双辽市', 382, '220382', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('61', '63', '0,2900,63,61,', '坊子区', 704, '370704', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('610', '587', '0,1970,587,610,', '林口县', 1025, '231025', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('611', '613', '0,2747,613,611,', '梁子湖区', 702, '420702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('612', '553', '0,996,553,612,', '公主岭市', 381, '220381', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('613', '2747', '0,2747,613,', '鄂州市', 700, '420700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('614', '613', '0,2747,613,614,', '鄂城区', 704, '420704', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('615', '588', '0,2825,588,615,', '中江县', 623, '510623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('616', '613', '0,2747,613,616,', '华容区', 703, '420703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('617', '747', '0,121,747,617,', '沅江市', 981, '430981', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('618', '633', '0,986,633,618,', '红古区', 111, '620111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('619', '626', '0,891,626,619,', '龙华区', 309, '440309', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('62', '891', '0,891,62,', '中山市', 2000, '442000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('620', '626', '0,891,626,620,', '盐田区', 308, '440308', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('621', '626', '0,891,626,621,', '龙岗区', 307, '440307', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('622', '626', '0,891,626,622,', '宝安区', 306, '440306', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('623', '626', '0,891,626,623,', '南山区', 305, '440305', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('624', '626', '0,891,626,624,', '福田区', 304, '440304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('625', '626', '0,891,626,625,', '罗湖区', 303, '440303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('626', '891', '0,891,626,', '深圳市', 300, '440300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('627', '594', '0,267,594,627,', '建昌县', 1422, '211422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('628', '594', '0,267,594,628,', '绥中县', 1421, '211421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('629', '633', '0,986,633,629,', '七里河区', 103, '620103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('63', '2900', '0,2900,63,', '潍坊市', 700, '370700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('630', '633', '0,986,633,630,', '西固区', 104, '620104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('631', '633', '0,986,633,631,', '安宁区', 105, '620105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('632', '678', '0,2138,678,632,', '江都区', 1012, '321012', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('633', '986', '0,986,633,', '兰州市', 100, '620100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('634', '633', '0,986,633,634,', '城关区', 102, '620102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('635', '591', '0,120,591,635,', '榕江县', 2632, '522632', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('636', '591', '0,120,591,636,', '从江县', 2633, '522633', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('637', '3360', '0,3360,637,', '新北市', 200, '830200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('638', '591', '0,120,591,638,', '雷山县', 2634, '522634', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('639', '637', '0,3360,637,639,', '板桥区', 201, '830201', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('64', '155', '0,2825,155,64,', '峨眉山市', 1181, '511181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('640', '591', '0,120,591,640,', '麻江县', 2635, '522635', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('641', '637', '0,3360,637,641,', '土城区', 202, '830202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('642', '591', '0,120,591,642,', '丹寨县', 2636, '522636', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('643', '645', '0,267,645,643,', '沈河区', 103, '210103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('644', '645', '0,267,645,644,', '和平区', 102, '210102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('645', '267', '0,267,645,', '沈阳市', 100, '210100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('646', '645', '0,267,645,646,', '铁西区', 106, '210106', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('647', '645', '0,267,645,647,', '皇姑区', 105, '210105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('648', '678', '0,2138,678,648,', '广陵区', 1002, '321002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('649', '645', '0,267,645,649,', '大东区', 104, '210104', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('65', '159', '0,2747,159,65,', '宜城市', 684, '420684', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('650', '678', '0,2138,678,650,', '邗江区', 1003, '321003', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('651', '661', '0,1105,661,651,', '涵江区', 303, '350303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('652', '2826', '0,782,2826,652,', '平泉市', 881, '130881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('653', '678', '0,2138,678,653,', '宝应县', 1023, '321023', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('654', '661', '0,1105,661,654,', '荔城区', 304, '350304', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('655', '661', '0,1105,661,655,', '秀屿区', 305, '350305', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('656', '747', '0,121,747,656,', '南县', 921, '430921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('657', '747', '0,121,747,657,', '安化县', 923, '430923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('658', '660', '0,1561,660,658,', '泸水市', 3301, '533301', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('659', '747', '0,121,747,659,', '桃江县', 922, '430922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('66', '63', '0,2900,63,66,', '奎文区', 705, '370705', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('660', '1561', '0,1561,660,', '怒江傈僳族自治州', 3300, '533300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('661', '1105', '0,1105,661,', '莆田市', 300, '350300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('662', '661', '0,1105,661,662,', '城厢区', 302, '350302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('663', '3282', '0,3282,663,', '大同市', 200, '140200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('664', '645', '0,267,645,664,', '于洪区', 114, '210114', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('665', '766', '0,1941,766,665,', '合浦县', 521, '450521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('666', '645', '0,267,645,666,', '沈北新区', 113, '210113', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('667', '645', '0,267,645,667,', '浑南区', 112, '210112', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('668', '645', '0,267,645,668,', '苏家屯区', 111, '210111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('669', '645', '0,267,645,669,', '辽中区', 115, '210115', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('67', '57', '0,1786,57,67,', '湛河区', 411, '410411', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('670', '671', '0,891,671,670,', '源城区', 1602, '441602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('671', '891', '0,891,671,', '河源市', 1600, '441600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('672', '663', '0,3282,663,672,', '新荣区', 212, '140212', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('673', '663', '0,3282,663,673,', '平城区', 213, '140213', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('674', '663', '0,3282,663,674,', '云冈区', 214, '140214', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('675', '663', '0,3282,663,675,', '云州区', 215, '140215', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('676', '645', '0,267,645,676,', '法库县', 124, '210124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('677', '645', '0,267,645,677,', '康平县', 123, '210123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('678', '2138', '0,2138,678,', '扬州市', 1000, '321000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('679', '591', '0,120,591,679,', '剑河县', 2629, '522629', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('68', '57', '0,1786,57,68,', '郏县', 425, '410425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('680', '591', '0,120,591,680,', '黄平县', 2622, '522622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('681', '591', '0,120,591,681,', '施秉县', 2623, '522623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('682', '591', '0,120,591,682,', '三穗县', 2624, '522624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('683', '591', '0,120,591,683,', '镇远县', 2625, '522625', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('684', '661', '0,1105,661,684,', '仙游县', 322, '350322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('685', '591', '0,120,591,685,', '岑巩县', 2626, '522626', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('686', '591', '0,120,591,686,', '天柱县', 2627, '522627', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('687', '591', '0,120,591,687,', '锦屏县', 2628, '522628', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('688', '663', '0,3282,663,688,', '阳高县', 221, '140221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('689', '663', '0,3282,663,689,', '天镇县', 222, '140222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('69', '95', '0,3015,95,69,', '新昌县', 624, '330624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('690', '663', '0,3282,663,690,', '广灵县', 223, '140223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('691', '591', '0,120,591,691,', '台江县', 2630, '522630', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('692', '663', '0,3282,663,692,', '灵丘县', 224, '140224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('693', '591', '0,120,591,693,', '黎平县', 2631, '522631', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('694', '663', '0,3282,663,694,', '浑源县', 225, '140225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('695', '663', '0,3282,663,695,', '左云县', 226, '140226', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('696', '698', '0,2592,698,696,', '阿尔山市', 2202, '152202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('697', '698', '0,2592,698,697,', '乌兰浩特市', 2201, '152201', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('698', '2592', '0,2592,698,', '兴安盟', 2200, '152200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('699', '594', '0,267,594,699,', '兴城市', 1481, '211481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('7', '155', '0,2825,155,7,', '峨边彝族自治县', 1132, '511132', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('70', '57', '0,1786,57,70,', '叶县', 422, '410422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('700', '727', '0,2559,727,700,', '墨脱县', 423, '540423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('701', '727', '0,2559,727,701,', '波密县', 424, '540424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('702', '727', '0,2559,727,702,', '察隅县', 425, '540425', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('703', '727', '0,2559,727,703,', '朗县', 426, '540426', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('704', '3', '0,2747,3,704,', '麻城市', 1181, '421181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('705', '727', '0,2559,727,705,', '工布江达县', 421, '540421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('706', '727', '0,2559,727,706,', '米林县', 422, '540422', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('707', '3', '0,2747,3,707,', '武穴市', 1182, '421182', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('708', '847', '0,431,847,708,', '布尔津县', 4321, '654321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('709', '847', '0,431,847,709,', '富蕴县', 4322, '654322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('71', '57', '0,1786,57,71,', '宝丰县', 421, '410421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('710', '847', '0,431,847,710,', '福海县', 4323, '654323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('711', '587', '0,1970,587,711,', '东宁市', 1086, '231086', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('712', '587', '0,1970,587,712,', '穆棱市', 1085, '231085', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('713', '587', '0,1970,587,713,', '宁安市', 1084, '231084', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('714', '587', '0,1970,587,714,', '海林市', 1083, '231083', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('715', '587', '0,1970,587,715,', '绥芬河市', 1081, '231081', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('716', '637', '0,3360,637,716,', '平溪区', 229, '830229', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('717', '718', '0,1561,718,717,', '景洪市', 2801, '532801', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('718', '1561', '0,1561,718,', '西双版纳傣族自治州', 2800, '532800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('719', '637', '0,3360,637,719,', '石门区', 225, '830225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('72', '57', '0,1786,57,72,', '鲁山县', 423, '410423', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('720', '637', '0,3360,637,720,', '瑞芳区', 226, '830226', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('721', '637', '0,3360,637,721,', '贡寮区', 227, '830227', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('722', '637', '0,3360,637,722,', '双溪区', 228, '830228', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('723', '463', '0,2138,463,723,', '张家港市', 582, '320582', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('724', '463', '0,2138,463,724,', '昆山市', 583, '320583', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('725', '727', '0,2559,727,725,', '巴宜区', 402, '540402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('726', '463', '0,2138,463,726,', '常熟市', 581, '320581', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('727', '2559', '0,2559,727,', '林芝市', 400, '540400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('728', '637', '0,3360,637,728,', '汐止区', 221, '830221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('729', '637', '0,3360,637,729,', '金山区', 222, '830222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('73', '63', '0,2900,63,73,', '临朐县', 724, '370724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('730', '637', '0,3360,637,730,', '万里区', 223, '830223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('731', '637', '0,3360,637,731,', '三芝区', 224, '830224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('732', '637', '0,3360,637,732,', '三峡区', 220, '830220', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('733', '637', '0,3360,637,733,', '树林区', 218, '830218', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('734', '637', '0,3360,637,734,', '莺歌区', 219, '830219', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('735', '738', '0,2129,738,735,', '东乡区', 1003, '361003', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('736', '738', '0,2129,738,736,', '临川区', 1002, '361002', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('737', '637', '0,3360,637,737,', '永和区', 214, '830214', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('738', '2129', '0,2129,738,', '抚州市', 1000, '361000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('739', '637', '0,3360,637,739,', '三重区', 215, '830215', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('74', '63', '0,2900,63,74,', '昌乐县', 725, '370725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('740', '637', '0,3360,637,740,', '芦洲区', 216, '830216', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('741', '637', '0,3360,637,741,', '泰山区', 217, '830217', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('742', '766', '0,1941,766,742,', '铁山港区', 512, '450512', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('743', '447', '0,5,447,743,', '巢湖市', 181, '340181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('744', '645', '0,267,645,744,', '新民市', 181, '210181', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('745', '847', '0,431,847,745,', '哈巴河县', 4324, '654324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('746', '637', '0,3360,637,746,', '八里区', 210, '830210', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('747', '121', '0,121,747,', '益阳市', 900, '430900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('748', '847', '0,431,847,748,', '青河县', 4325, '654325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('749', '637', '0,3360,637,749,', '林口区', 211, '830211', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('75', '78', '0,267,78,75,', '鲅鱼圈区', 804, '210804', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('750', '747', '0,121,747,750,', '赫山区', 903, '430903', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('751', '847', '0,431,847,751,', '吉木乃县', 4326, '654326', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('752', '637', '0,3360,637,752,', '淡水区', 212, '830212', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('753', '747', '0,121,747,753,', '资阳区', 902, '430902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('754', '637', '0,3360,637,754,', '中和区', 213, '830213', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('755', '637', '0,3360,637,755,', '坪林区', 207, '830207', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('756', '637', '0,3360,637,756,', '乌来区', 208, '830208', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('757', '637', '0,3360,637,757,', '五股区', 209, '830209', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('758', '766', '0,1941,766,758,', '银海区', 503, '450503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('759', '431', '0,431,759,', '克孜勒苏柯尔克孜自治州', 3000, '653000', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('76', '78', '0,267,78,76,', '西市区', 803, '210803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('760', '637', '0,3360,637,760,', '新庄区', 203, '830203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('761', '766', '0,1941,766,761,', '海城区', 502, '450502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('762', '759', '0,431,759,762,', '阿图什市', 3001, '653001', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('763', '637', '0,3360,637,763,', '新店区', 204, '830204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('764', '637', '0,3360,637,764,', '深坑区', 205, '830205', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('765', '637', '0,3360,637,765,', '石碇区', 206, '830206', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('766', '1941', '0,1941,766,', '北海市', 500, '450500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('767', '463', '0,2138,463,767,', '太仓市', 585, '320585', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('768', '51', '0,121,51,768,', '永顺县', 3127, '433127', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('769', '51', '0,121,51,769,', '保靖县', 3125, '433125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('77', '78', '0,267,78,77,', '站前区', 802, '210802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('770', '51', '0,121,51,770,', '古丈县', 3126, '433126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('771', '738', '0,2129,738,771,', '广昌县', 1030, '361030', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('772', '738', '0,2129,738,772,', '金溪县', 1027, '361027', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('773', '738', '0,2129,738,773,', '宜黄县', 1026, '361026', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('774', '738', '0,2129,738,774,', '乐安县', 1025, '361025', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('775', '738', '0,2129,738,775,', '崇仁县', 1024, '361024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('776', '738', '0,2129,738,776,', '南丰县', 1023, '361023', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('777', '738', '0,2129,738,777,', '黎川县', 1022, '361022', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('778', '738', '0,2129,738,778,', '南城县', 1021, '361021', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('779', '51', '0,121,51,779,', '龙山县', 3130, '433130', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('78', '267', '0,267,78,', '营口市', 800, '210800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('780', '1', '0,780,', '澳门特别行政区', 0, '820000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('781', '738', '0,2129,738,781,', '资溪县', 1028, '361028', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('782', '1', '0,782,', '河北省', 0, '130000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('783', '891', '0,891,783,', '潮州市', 5100, '445100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('784', '783', '0,891,783,784,', '潮安区', 5103, '445103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('785', '783', '0,891,783,785,', '湘桥区', 5102, '445102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('786', '759', '0,431,759,786,', '阿克陶县', 3022, '653022', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('787', '759', '0,431,759,787,', '阿合奇县', 3023, '653023', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('788', '759', '0,431,759,788,', '乌恰县', 3024, '653024', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('789', '51', '0,121,51,789,', '凤凰县', 3123, '433123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('79', '80', '0,1970,80,79,', '向阳区', 402, '230402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('790', '51', '0,121,51,790,', '花垣县', 3124, '433124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('791', '51', '0,121,51,791,', '泸溪县', 3122, '433122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('792', '783', '0,891,783,792,', '饶平县', 5122, '445122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('793', '718', '0,1561,718,793,', '勐腊县', 2823, '532823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('794', '718', '0,1561,718,794,', '勐海县', 2822, '532822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('795', '797', '0,2825,797,795,', '巴州区', 1902, '511902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('796', '797', '0,2825,797,796,', '恩阳区', 1903, '511903', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('797', '2825', '0,2825,797,', '巴中市', 1900, '511900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('798', '865', '0,1786,865,798,', '禹王台区', 205, '410205', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('799', '865', '0,1786,865,799,', '龙亭区', 202, '410202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('8', '14', '0,431,14,8,', '头屯河区', 106, '650106', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('80', '1970', '0,1970,80,', '鹤岗市', 400, '230400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('800', '865', '0,1786,865,800,', '鼓楼区', 204, '410204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('801', '865', '0,1786,865,801,', '顺河回族区', 203, '410203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('802', '2615', '0,267,2615,802,', '灯塔市', 1081, '211081', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('803', '865', '0,1786,865,803,', '祥符区', 212, '410212', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('804', '1730', '0,1730,804,', '巫溪县', 238, '500238', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('805', '1730', '0,1730,805,', '巫山县', 237, '500237', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('806', '1730', '0,1730,806,', '奉节县', 236, '500236', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('807', '1730', '0,1730,807,', '酉阳土家族苗族自治县', 242, '500242', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('808', '1730', '0,1730,808,', '秀山土家族苗族自治县', 241, '500241', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('809', '1561', '0,1561,809,', '临沧市', 900, '530900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('81', '431', '0,431,81,', '和田地区', 3200, '653200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('810', '1730', '0,1730,810,', '石柱土家族自治县', 240, '500240', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('811', '1730', '0,1730,811,', '彭水苗族土家族自治县', 243, '500243', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('812', '826', '0,986,826,812,', '金塔县', 921, '620921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('813', '826', '0,986,826,813,', '瓜州县', 922, '620922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('814', '865', '0,1786,865,814,', '通许县', 222, '410222', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('815', '826', '0,986,826,815,', '肃北蒙古族自治县', 923, '620923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('816', '865', '0,1786,865,816,', '杞县', 221, '410221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('817', '826', '0,986,826,817,', '阿克塞哈萨克族自治县', 924, '620924', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('818', '809', '0,1561,809,818,', '临翔区', 902, '530902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('819', '865', '0,1786,865,819,', '尉氏县', 223, '410223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('82', '81', '0,431,81,82,', '和田市', 3201, '653201', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('820', '865', '0,1786,865,820,', '兰考县', 225, '410225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('821', '830', '0,3015,830,821,', '海盐县', 424, '330424', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('822', '830', '0,3015,830,822,', '嘉善县', 421, '330421', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('823', '996', '0,996,823,', '白城市', 800, '220800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('824', '823', '0,996,823,824,', '洮北区', 802, '220802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('825', '830', '0,3015,830,825,', '秀洲区', 411, '330411', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('826', '986', '0,986,826,', '酒泉市', 900, '620900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('827', '826', '0,986,826,827,', '肃州区', 902, '620902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('828', '839', '0,121,839,828,', '零陵区', 1102, '431102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('829', '839', '0,121,839,829,', '冷水滩区', 1103, '431103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('83', '80', '0,1970,80,83,', '兴山区', 407, '230407', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('830', '3015', '0,3015,830,', '嘉兴市', 400, '330400', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('831', '830', '0,3015,830,831,', '南湖区', 402, '330402', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('832', '823', '0,996,823,832,', '通榆县', 822, '220822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('833', '834', '0,1786,834,833,', '平桥区', 1503, '411503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('834', '1786', '0,1786,834,', '信阳市', 1500, '411500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('835', '834', '0,1786,834,835,', '浉河区', 1502, '411502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('836', '823', '0,996,823,836,', '镇赉县', 821, '220821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('837', '838', '0,2592,838,837,', '临河区', 802, '150802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('838', '2592', '0,2592,838,', '巴彦淖尔市', 800, '150800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('839', '121', '0,121,839,', '永州市', 1100, '431100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('84', '78', '0,267,78,84,', '老边区', 811, '210811', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('840', '839', '0,121,839,840,', '道县', 1124, '431124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('841', '839', '0,121,839,841,', '双牌县', 1123, '431123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('842', '839', '0,121,839,842,', '宁远县', 1126, '431126', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('843', '839', '0,121,839,843,', '江永县', 1125, '431125', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('844', '839', '0,121,839,844,', '新田县', 1128, '431128', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('845', '839', '0,121,839,845,', '蓝山县', 1127, '431127', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('846', '839', '0,121,839,846,', '江华瑶族自治县', 1129, '431129', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('847', '431', '0,431,847,', '阿勒泰地区', 4300, '654300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('848', '847', '0,431,847,848,', '阿勒泰市', 4301, '654301', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('849', '834', '0,1786,834,849,', '潢川县', 1526, '411526', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('85', '80', '0,1970,80,85,', '东山区', 406, '230406', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('850', '834', '0,1786,834,850,', '固始县', 1525, '411525', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('851', '834', '0,1786,834,851,', '息县', 1528, '411528', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('852', '834', '0,1786,834,852,', '淮滨县', 1527, '411527', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('853', '834', '0,1786,834,853,', '光山县', 1522, '411522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('854', '834', '0,1786,834,854,', '罗山县', 1521, '411521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('855', '834', '0,1786,834,855,', '商城县', 1524, '411524', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('856', '834', '0,1786,834,856,', '新县', 1523, '411523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('857', '838', '0,2592,838,857,', '杭锦后旗', 826, '150826', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('858', '838', '0,2592,838,858,', '乌拉特中旗', 824, '150824', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('859', '809', '0,1561,809,859,', '凤庆县', 921, '530921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('86', '80', '0,1970,80,86,', '兴安区', 405, '230405', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('860', '838', '0,2592,838,860,', '乌拉特后旗', 825, '150825', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('861', '809', '0,1561,809,861,', '云县', 922, '530922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('862', '838', '0,2592,838,862,', '磴口县', 822, '150822', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('863', '838', '0,2592,838,863,', '乌拉特前旗', 823, '150823', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('864', '838', '0,2592,838,864,', '五原县', 821, '150821', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('865', '1786', '0,1786,865,', '开封市', 200, '410200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('866', '809', '0,1561,809,866,', '沧源佤族自治县', 927, '530927', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('867', '809', '0,1561,809,867,', '双江拉祜族佤族布朗族傣族自治县', 925, '530925', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('868', '809', '0,1561,809,868,', '耿马傣族佤族自治县', 926, '530926', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('869', '839', '0,121,839,869,', '东安县', 1122, '431122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('87', '80', '0,1970,80,87,', '南山区', 404, '230404', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('870', '809', '0,1561,809,870,', '永德县', 923, '530923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('871', '839', '0,121,839,871,', '祁阳县', 1121, '431121', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('872', '809', '0,1561,809,872,', '镇康县', 924, '530924', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('873', '1520', '0,2825,1520,873,', '万源市', 1781, '511781', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('874', '876', '0,2900,876,874,', '河口区', 503, '370503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('875', '876', '0,2900,876,875,', '垦利区', 505, '370505', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('876', '2900', '0,2900,876,', '东营市', 500, '370500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('877', '876', '0,2900,876,877,', '东营区', 502, '370502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('878', '1105', '0,1105,878,', '宁德市', 900, '350900', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('879', '878', '0,1105,878,879,', '蕉城区', 902, '350902', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('88', '80', '0,1970,80,88,', '工农区', 403, '230403', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('880', '910', '0,418,910,880,', '镇巴县', 728, '610728', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('881', '910', '0,418,910,881,', '留坝县', 729, '610729', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('882', '887', '0,1561,887,882,', '芒市', 3103, '533103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('883', '910', '0,418,910,883,', '宁强县', 726, '610726', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('884', '887', '0,1561,887,884,', '瑞丽市', 3102, '533102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('885', '910', '0,418,910,885,', '略阳县', 727, '610727', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('886', '910', '0,418,910,886,', '西乡县', 724, '610724', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('887', '1561', '0,1561,887,', '德宏傣族景颇族自治州', 3100, '533100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('888', '910', '0,418,910,888,', '勉县', 725, '610725', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('889', '910', '0,418,910,889,', '城固县', 722, '610722', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('89', '121', '0,121,89,', '娄底市', 1300, '431300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('890', '910', '0,418,910,890,', '洋县', 723, '610723', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('891', '1', '0,891,', '广东省', 0, '440000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('892', '910', '0,418,910,892,', '佛坪县', 730, '610730', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('893', '876', '0,2900,876,893,', '利津县', 522, '370522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('894', '876', '0,2900,876,894,', '广饶县', 523, '370523', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('895', '899', '0,267,899,895,', '振安区', 604, '210604', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('896', '899', '0,267,899,896,', '振兴区', 603, '210603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('897', '899', '0,267,899,897,', '元宝区', 602, '210602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('898', '932', '0,5,932,898,', '濉溪县', 621, '340621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('899', '267', '0,267,899,', '丹东市', 600, '210600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('9', '14', '0,431,14,9,', '水磨沟区', 105, '650105', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('90', '89', '0,121,89,90,', '娄星区', 1302, '431302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('900', '878', '0,1105,878,900,', '霞浦县', 921, '350921', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('901', '878', '0,1105,878,901,', '古田县', 922, '350922', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('902', '878', '0,1105,878,902,', '屏南县', 923, '350923', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('903', '878', '0,1105,878,903,', '寿宁县', 924, '350924', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('904', '878', '0,1105,878,904,', '周宁县', 925, '350925', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('905', '878', '0,1105,878,905,', '柘荣县', 926, '350926', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('906', '823', '0,996,823,906,', '洮南市', 881, '220881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('907', '910', '0,418,910,907,', '汉台区', 702, '610702', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('908', '823', '0,996,823,908,', '大安市', 882, '220882', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('909', '910', '0,418,910,909,', '南郑区', 703, '610703', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('91', '986', '0,986,91,', '金昌市', 300, '620300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('910', '418', '0,418,910,', '汉中市', 700, '610700', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('911', '914', '0,1970,914,911,', '铁锋区', 204, '230204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('912', '914', '0,1970,914,912,', '建华区', 203, '230203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('913', '914', '0,1970,914,913,', '龙沙区', 202, '230202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('914', '1970', '0,1970,914,', '齐齐哈尔市', 200, '230200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('915', '914', '0,1970,914,915,', '梅里斯达斡尔族区', 208, '230208', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('916', '914', '0,1970,914,916,', '碾子山区', 207, '230207', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('917', '914', '0,1970,914,917,', '富拉尔基区', 206, '230206', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('918', '914', '0,1970,914,918,', '昂昂溪区', 205, '230205', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('919', '826', '0,986,826,919,', '玉门市', 981, '620981', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('92', '95', '0,3015,95,92,', '越城区', 602, '330602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('920', '826', '0,986,826,920,', '敦煌市', 982, '620982', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('921', '923', '0,891,923,921,', '惠阳区', 1303, '441303', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('922', '923', '0,891,923,922,', '惠城区', 1302, '441302', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('923', '891', '0,891,923,', '惠州市', 1300, '441300', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('924', '932', '0,5,932,924,', '相山区', 603, '340603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('925', '932', '0,5,932,925,', '烈山区', 604, '340604', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('926', '932', '0,5,932,926,', '杜集区', 602, '340602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('927', '914', '0,1970,914,927,', '拜泉县', 231, '230231', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('928', '914', '0,1970,914,928,', '克东县', 230, '230230', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('929', '3083', '0,3083,929,', '中卫市', 500, '640500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('93', '95', '0,3015,95,93,', '柯桥区', 603, '330603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('930', '899', '0,267,899,930,', '宽甸满族自治县', 624, '210624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('931', '929', '0,3083,929,931,', '沙坡头区', 502, '640502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('932', '5', '0,5,932,', '淮北市', 600, '340600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('933', '914', '0,1970,914,933,', '甘南县', 225, '230225', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('934', '914', '0,1970,914,934,', '泰来县', 224, '230224', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('935', '914', '0,1970,914,935,', '依安县', 223, '230223', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('936', '914', '0,1970,914,936,', '龙江县', 221, '230221', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('937', '3282', '0,3282,937,', '朔州市', 600, '140600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('938', '937', '0,3282,937,938,', '朔城区', 602, '140602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('939', '937', '0,3282,937,939,', '平鲁区', 603, '140603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('94', '95', '0,3015,95,94,', '上虞区', 604, '330604', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('940', '914', '0,1970,914,940,', '克山县', 229, '230229', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('941', '914', '0,1970,914,941,', '富裕县', 227, '230227', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('942', '923', '0,891,923,942,', '龙门县', 1324, '441324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('943', '923', '0,891,923,943,', '惠东县', 1323, '441323', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('944', '923', '0,891,923,944,', '博罗县', 1322, '441322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('945', '1730', '0,1730,945,', '城口县', 229, '500229', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('946', '1730', '0,1730,946,', '垫江县', 231, '500231', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('947', '1730', '0,1730,947,', '丰都县', 230, '500230', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('948', '1730', '0,1730,948,', '云阳县', 235, '500235', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('949', '1730', '0,1730,949,', '忠县', 233, '500233', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('95', '3015', '0,3015,95,', '绍兴市', 600, '330600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('950', '929', '0,3083,929,950,', '海原县', 522, '640522', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('951', '929', '0,3083,929,951,', '中宁县', 521, '640521', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('952', '964', '0,121,964,952,', '临湘市', 682, '430682', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('953', '964', '0,121,964,953,', '汨罗市', 681, '430681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('954', '887', '0,1561,887,954,', '陇川县', 3124, '533124', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('955', '887', '0,1561,887,955,', '盈江县', 3123, '533123', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('956', '887', '0,1561,887,956,', '梁河县', 3122, '533122', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('957', '937', '0,3282,937,957,', '山阴县', 621, '140621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('958', '937', '0,3282,937,958,', '应县', 622, '140622', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('959', '937', '0,3282,937,959,', '右玉县', 623, '140623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('96', '660', '0,1561,660,96,', '兰坪白族普米族自治县', 3325, '533325', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('960', '964', '0,121,964,960,', '君山区', 611, '430611', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('961', '1561', '0,1561,961,', '昆明市', 100, '530100', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('962', '914', '0,1970,914,962,', '讷河市', 281, '230281', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('963', '899', '0,267,899,963,', '凤城市', 682, '210682', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('964', '121', '0,121,964,', '岳阳市', 600, '430600', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('965', '1044', '0,782,1044,965,', '卢龙县', 324, '130324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('966', '899', '0,267,899,966,', '东港市', 681, '210681', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('967', '1044', '0,782,1044,967,', '青龙满族自治县', 321, '130321', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('968', '964', '0,121,964,968,', '岳阳楼区', 602, '430602', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('969', '1044', '0,782,1044,969,', '昌黎县', 322, '130322', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('97', '660', '0,1561,660,97,', '贡山独龙族怒族自治县', 3324, '533324', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('970', '964', '0,121,964,970,', '云溪区', 603, '430603', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('971', '961', '0,1561,961,971,', '官渡区', 111, '530111', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('972', '1088', '0,891,1088,972,', '吴川市', 883, '440883', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('973', '1088', '0,891,1088,973,', '雷州市', 882, '440882', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('974', '1088', '0,891,1088,974,', '廉江市', 881, '440881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('975', '984', '0,1941,984,975,', '柳江区', 206, '450206', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('976', '961', '0,1561,961,976,', '盘龙区', 103, '530103', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('977', '984', '0,1941,984,977,', '柳北区', 205, '450205', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('978', '961', '0,1561,961,978,', '五华区', 102, '530102', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('979', '984', '0,1941,984,979,', '城中区', 202, '450202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('98', '1443', '0,5,1443,98,', '桐城市', 881, '340881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('980', '2825', '0,2825,980,', '雅安市', 1800, '511800', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('981', '984', '0,1941,984,981,', '柳南区', 204, '450204', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('982', '984', '0,1941,984,982,', '鱼峰区', 203, '450203', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('983', '980', '0,2825,980,983,', '名山区', 1803, '511803', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('984', '1941', '0,1941,984,', '柳州市', 200, '450200', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('985', '980', '0,2825,980,985,', '雨城区', 1802, '511802', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('986', '1', '0,986,', '甘肃省', 0, '620000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('987', '2335', '0,2900,2335,987,', '滕州市', 481, '370481', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('988', '2825', '0,2825,988,', '泸州市', 500, '510500', '3', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('989', '988', '0,2825,988,989,', '江阳区', 502, '510502', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('99', '1443', '0,5,1443,99,', '潜山市', 882, '340882', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('990', '988', '0,2825,988,990,', '龙马潭区', 504, '510504', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('991', '988', '0,2825,988,991,', '纳溪区', 503, '510503', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('992', '964', '0,121,964,992,', '岳阳县', 621, '430621', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('993', '964', '0,121,964,993,', '湘阴县', 624, '430624', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('994', '964', '0,121,964,994,', '华容县', 623, '430623', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('995', '964', '0,121,964,995,', '平江县', 626, '430626', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('996', '1', '0,996,', '吉林省', 0, '220000', '2', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('997', '2351', '0,1105,2351,997,', '漳平市', 881, '350881', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('998', '1000', '0,2129,1000,998,', '昌江区', 202, '360202', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');
INSERT INTO `sys_area` VALUES ('999', '980', '0,2825,980,999,', '宝兴县', 1827, '511827', '4', '1', '2019-12-21 20:46:11', '1', '2019-12-21 20:46:11', NULL, '0');

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
INSERT INTO `sys_office` VALUES ('1', '0', '0,', '总公司', 10, '619', '440309', '1', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2019-12-08 14:18:14', '', '0');
INSERT INTO `sys_office` VALUES ('2', '1', '0,1,', '公司领导', 10, '619', '440309', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');

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
INSERT INTO `sys_user` VALUES ('1', '1', '2', 'thinkgem', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0001', '系统管理员', 'thinkgem@163.com', '8675', '8675', NULL, NULL, '0:0:0:0:0:0:0:1', '2019-12-21 18:44:35', '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', '最高管理员', '0');

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
