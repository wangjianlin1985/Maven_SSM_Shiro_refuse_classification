/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.6
 Source Server Type    : MySQL
 Source Server Version : 50620
 Source Host           : localhost:3306
 Source Schema         : zzwy

 Target Server Type    : MySQL
 Target Server Version : 50620
 File Encoding         : 65001

 Date: 13/12/2020 18:56:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fix
-- ----------------------------
DROP TABLE IF EXISTS `fix`;
CREATE TABLE `fix`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '报修标题',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详情',
  `user` bigint(20) NULL DEFAULT NULL COMMENT '报修人',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物业完成状态',
  `ustate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户确认状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '报修信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fix
-- ----------------------------
INSERT INTO `fix` VALUES (1, 'fdajkfdaskj', 'kfdjaskfdas', 1, '已完成', '已完成');
INSERT INTO `fix` VALUES (2, '放大发大水发', '范德萨发少打', 12, '已完成', '已完成');
INSERT INTO `fix` VALUES (3, '东门的垃圾站包装桶烂了', '今天处理我家垃圾的时候，工作人员发现垃圾桶坏了个洞！', 13, '已完成', '已完成');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '楼栋编号',
  `ceng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '层数',
  `room` int(255) NULL DEFAULT NULL COMMENT '房间数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '楼栋信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES (1, '干垃圾', '不可回收', 1001);
INSERT INTO `house` VALUES (2, '塑料垃圾', '可回收', 1002);
INSERT INTO `house` VALUES (3, '纸质垃圾', '可回收', 1003);

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收费名称',
  `price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '金额',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '缴费截止时间',
  `user` bigint(20) NULL DEFAULT NULL COMMENT '业主',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '缴费状态',
  `gmtTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '缴费时间' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (3, '1', '1', '2019-12-02 22:49:31', 12, '可回收垃圾', '已运输', '2019-12-02 22:49:31');
INSERT INTO `record` VALUES (4, '垃圾费8元', '8', '2019-11-19 23:12:27', 9, '不可回收垃圾', '待运输', '2019-11-19 23:12:27');
INSERT INTO `record` VALUES (5, '垃圾费8元', '8', '2019-11-23 23:12:27', 12, '可回收垃圾', '待运输', '2019-11-23 23:12:27');
INSERT INTO `record` VALUES (6, '张大鹏的维修费', '12', '2019-11-22 23:12:40', 9, '可回收垃圾', '待运输', '2019-11-22 23:12:40');
INSERT INTO `record` VALUES (7, '11', '100', '2019-11-23 13:47:57', 11, '可回收垃圾', '待运输', '2019-11-23 13:47:57');
INSERT INTO `record` VALUES (8, '垃圾处理费10元', '10', '2020-12-13 18:24:44', 13, '不可回收', '待运输', '2020-12-13 18:25:50');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房号',
  `house` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属楼栋',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面积',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房间信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, '水仙里垃圾站', '1', '校师傅负责');
INSERT INTO `room` VALUES (2, '水仙里垃圾站', '1', '校师傅负责');
INSERT INTO `room` VALUES (3, 'G45GDSA', '2', '校师傅负责');
INSERT INTO `room` VALUES (4, '水仙里垃圾站', '3', '校师傅负责');
INSERT INTO `room` VALUES (5, '小区东门垃圾站', '1', '林哥哥');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'key',
  `value` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `key`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', 0, '配置信息');
INSERT INTO `sys_config` VALUES (2, '性别', '男', 1, '');
INSERT INTO `sys_config` VALUES (3, '单位', '个', 1, NULL);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (57, 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"123@qq.com\",\"mobile\":\"17562307526\",\"roleIdList\":[1],\"status\":1,\"username\":\"zhangmaowen\"}', '127.0.0.1', '2019-11-20 19:58:43');
INSERT INTO `sys_log` VALUES (58, 'admin', '修改用户', 'com.learn.controller.SysUserController.update()', '{\"createTime\":1549533783000,\"email\":\"1289367@qq.com\",\"mobile\":\"13354260932\",\"roleIdList\":[1],\"status\":1,\"userId\":8,\"username\":\"李胜\"}', '127.0.0.1', '2019-11-20 21:04:17');
INSERT INTO `sys_log` VALUES (59, 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"1447628qq.com\",\"mobile\":\"1234567\",\"roleIdList\":[1],\"status\":1,\"username\":\"张三\"}', '127.0.0.1', '2019-12-20 21:04:55');
INSERT INTO `sys_log` VALUES (60, 'admin', '修改用户', 'com.learn.controller.SysUserController.update()', '{\"createTime\":1550663924000,\"createUserId\":-1,\"email\":\"123@qq.com\",\"mobile\":\"17562307526\",\"roleIdList\":[1],\"status\":1,\"userId\":10,\"username\":\"zhangmaowen\"}', '127.0.0.1', '2019-11-27 15:35:56');
INSERT INTO `sys_log` VALUES (61, 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"123\",\"mobile\":\"1213\",\"roleIdList\":[1],\"status\":1,\"username\":\"xia\"}', '127.0.0.1', '2019-11-26 10:54:34');
INSERT INTO `sys_log` VALUES (62, 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"lingege@126.com\",\"mobile\":\"13508093423\",\"roleIdList\":[1],\"status\":1,\"username\":\"lingege\"}', '0:0:0:0:0:0:0:1', '2020-12-13 18:17:00');
INSERT INTO `sys_log` VALUES (63, 'admin', '保存配置', 'com.learn.controller.SysConfigController.save()', '{\"key\":\"性别\",\"remark\":\"\",\"value\":\"男\"}', '0:0:0:0:0:0:0:1', '2020-12-13 18:19:04');
INSERT INTO `sys_log` VALUES (64, 'admin', '保存配置', 'com.learn.controller.SysConfigController.save()', '{\"key\":\"sex\",\"value\":\"女\"}', '0:0:0:0:0:0:0:1', '2020-12-13 18:19:13');
INSERT INTO `sys_log` VALUES (65, 'admin', '修改配置', 'com.learn.controller.SysConfigController.update()', '{\"id\":2,\"key\":\"sex\",\"remark\":\"\",\"value\":\"男\"}', '0:0:0:0:0:0:0:1', '2020-12-13 18:19:18');
INSERT INTO `sys_log` VALUES (66, 'admin', '修改配置', 'com.learn.controller.SysConfigController.update()', '{\"id\":2,\"key\":\"sex\",\"remark\":\"\",\"value\":\"男\"}', '0:0:0:0:0:0:0:1', '2020-12-13 18:19:27');
INSERT INTO `sys_log` VALUES (67, 'admin', '修改配置', 'com.learn.controller.SysConfigController.update()', '{\"id\":3,\"key\":\"单位\",\"value\":\"个\"}', '0:0:0:0:0:0:0:1', '2020-12-13 18:19:53');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', NULL, NULL, 0, 'fa fa-cog', 0);
INSERT INTO `sys_menu` VALUES (2, 1, '用户管理', 'sys/user.html', NULL, 1, 'fa fa-user', 1);
INSERT INTO `sys_menu` VALUES (3, 1, '角色管理', 'sys/role.html', 'sys:role:list', 1, 'fa fa-user-secret', 2);
INSERT INTO `sys_menu` VALUES (4, 1, '菜单管理', 'sys/menu.html', 'sys:menu:list', 1, 'fa fa-th-list', 3);
INSERT INTO `sys_menu` VALUES (5, 1, 'SQL监控', 'druid/sql.html', NULL, 1, 'fa fa-bug', 4);
INSERT INTO `sys_menu` VALUES (6, 1, '定时任务', 'sys/schedule.html', NULL, 1, 'fa fa-tasks', 5);
INSERT INTO `sys_menu` VALUES (7, 6, '查看', NULL, 'sys:schedule:list,sys:schedule:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (8, 6, '新增', NULL, 'sys:schedule:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (9, 6, '修改', NULL, 'sys:schedule:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (10, 6, '删除', NULL, 'sys:schedule:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (11, 6, '暂停', NULL, 'sys:schedule:pause', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (12, 6, '恢复', NULL, 'sys:schedule:resume', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (13, 6, '立即执行', NULL, 'sys:schedule:run', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (14, 6, '日志列表', NULL, 'sys:schedule:log', 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (15, 2, '查看', NULL, 'sys:user:list,sys:user:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (16, 2, '新增', NULL, 'sys:user:save,sys:role:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (17, 2, '修改', NULL, 'sys:user:update,sys:role:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (18, 2, '删除', NULL, 'sys:user:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (19, 3, '查看', NULL, 'sys:role:list,sys:role:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (20, 3, '新增', NULL, 'sys:role:save,sys:menu:perms', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (21, 3, '修改', NULL, 'sys:role:update,sys:menu:perms', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (22, 3, '删除', NULL, 'sys:role:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (23, 4, '查看', NULL, 'sys:menu:list,sys:menu:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (24, 4, '新增', NULL, 'sys:menu:save,sys:menu:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (25, 4, '修改', NULL, 'sys:menu:update,sys:menu:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (26, 4, '删除', NULL, 'sys:menu:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (27, 1, '参数管理', 'sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', 1, 'fa fa-sun-o', 6);
INSERT INTO `sys_menu` VALUES (28, 1, '代码生成器', 'sys/generator.html', 'sys:generator:list,sys:generator:code', 1, 'fa fa-rocket', 8);
INSERT INTO `sys_menu` VALUES (29, 1, '系统日志', 'sys/log.html', 'sys:log:list', 1, 'fa fa-file-text-o', 7);
INSERT INTO `sys_menu` VALUES (30, 1, '文件上传', 'sys/oss.html', 'sys:oss:all', 1, 'fa fa-file-image-o', 6);
INSERT INTO `sys_menu` VALUES (65, 0, '垃圾分类信息', 'admin/house.html', NULL, 1, NULL, 6);
INSERT INTO `sys_menu` VALUES (66, 65, '查看', NULL, 'house:list,house:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (67, 65, '新增', NULL, 'house:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (68, 65, '修改', NULL, 'house:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (69, 65, '删除', NULL, 'house:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (70, 0, '垃圾站信息', 'admin/room.html', NULL, 1, NULL, 6);
INSERT INTO `sys_menu` VALUES (71, 70, '查看', NULL, 'room:list,room:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (72, 70, '新增', NULL, 'room:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (73, 70, '修改', NULL, 'room:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (74, 70, '删除', NULL, 'room:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (77, 76, '查看', NULL, 'car:list,car:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (78, 76, '新增', NULL, 'car:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (79, 76, '修改', NULL, 'car:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (80, 76, '删除', NULL, 'car:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (81, 0, '垃圾运输信息', 'admin/record.html', NULL, 1, NULL, 6);
INSERT INTO `sys_menu` VALUES (82, 81, '查看', NULL, 'record:list,record:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (83, 81, '新增', NULL, 'record:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (84, 81, '修改', NULL, 'record:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (85, 81, '删除', NULL, 'record:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (86, 0, '报修信息', 'admin/fix.html', NULL, 1, NULL, 6);
INSERT INTO `sys_menu` VALUES (87, 86, '查看', NULL, 'fix:list,fix:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (88, 86, '新增', NULL, 'fix:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (89, 86, '修改', NULL, 'fix:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (90, 86, '删除', NULL, 'fix:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (91, 0, '报修管理', 'admin/fixall.html', NULL, 1, NULL, 6);
INSERT INTO `sys_menu` VALUES (92, 0, '投诉信息', 'admin/ts.html', NULL, 1, NULL, 6);
INSERT INTO `sys_menu` VALUES (93, 92, '查看', NULL, 'ts:list,ts:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (94, 92, '新增', NULL, 'ts:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (95, 92, '修改', NULL, 'ts:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (96, 92, '删除', NULL, 'ts:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (97, 0, '投诉管理', 'admin/tsall.html', NULL, 1, NULL, 6);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) NULL DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '普通', NULL, 1, '2019-01-17 10:26:34');
INSERT INTO `sys_role` VALUES (2, '系统管理员', NULL, -1, '2019-01-17 15:24:04');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 163 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (108, 1, 65);
INSERT INTO `sys_role_menu` VALUES (109, 1, 66);
INSERT INTO `sys_role_menu` VALUES (110, 1, 70);
INSERT INTO `sys_role_menu` VALUES (111, 1, 71);
INSERT INTO `sys_role_menu` VALUES (112, 1, 76);
INSERT INTO `sys_role_menu` VALUES (113, 1, 77);
INSERT INTO `sys_role_menu` VALUES (114, 1, 81);
INSERT INTO `sys_role_menu` VALUES (115, 1, 82);
INSERT INTO `sys_role_menu` VALUES (116, 1, 86);
INSERT INTO `sys_role_menu` VALUES (117, 1, 87);
INSERT INTO `sys_role_menu` VALUES (118, 1, 88);
INSERT INTO `sys_role_menu` VALUES (119, 1, 89);
INSERT INTO `sys_role_menu` VALUES (120, 1, 90);
INSERT INTO `sys_role_menu` VALUES (121, 1, 92);
INSERT INTO `sys_role_menu` VALUES (122, 1, 93);
INSERT INTO `sys_role_menu` VALUES (123, 1, 94);
INSERT INTO `sys_role_menu` VALUES (124, 1, 95);
INSERT INTO `sys_role_menu` VALUES (125, 1, 96);
INSERT INTO `sys_role_menu` VALUES (126, 2, 2);
INSERT INTO `sys_role_menu` VALUES (127, 2, 15);
INSERT INTO `sys_role_menu` VALUES (128, 2, 16);
INSERT INTO `sys_role_menu` VALUES (129, 2, 17);
INSERT INTO `sys_role_menu` VALUES (130, 2, 18);
INSERT INTO `sys_role_menu` VALUES (131, 2, 65);
INSERT INTO `sys_role_menu` VALUES (132, 2, 66);
INSERT INTO `sys_role_menu` VALUES (133, 2, 67);
INSERT INTO `sys_role_menu` VALUES (134, 2, 68);
INSERT INTO `sys_role_menu` VALUES (135, 2, 69);
INSERT INTO `sys_role_menu` VALUES (136, 2, 70);
INSERT INTO `sys_role_menu` VALUES (137, 2, 71);
INSERT INTO `sys_role_menu` VALUES (138, 2, 72);
INSERT INTO `sys_role_menu` VALUES (139, 2, 73);
INSERT INTO `sys_role_menu` VALUES (140, 2, 74);
INSERT INTO `sys_role_menu` VALUES (141, 2, 75);
INSERT INTO `sys_role_menu` VALUES (142, 2, 76);
INSERT INTO `sys_role_menu` VALUES (143, 2, 77);
INSERT INTO `sys_role_menu` VALUES (144, 2, 78);
INSERT INTO `sys_role_menu` VALUES (145, 2, 79);
INSERT INTO `sys_role_menu` VALUES (146, 2, 80);
INSERT INTO `sys_role_menu` VALUES (147, 2, 81);
INSERT INTO `sys_role_menu` VALUES (148, 2, 82);
INSERT INTO `sys_role_menu` VALUES (149, 2, 83);
INSERT INTO `sys_role_menu` VALUES (150, 2, 84);
INSERT INTO `sys_role_menu` VALUES (151, 2, 85);
INSERT INTO `sys_role_menu` VALUES (152, 2, 91);
INSERT INTO `sys_role_menu` VALUES (153, 2, 97);
INSERT INTO `sys_role_menu` VALUES (154, 2, 1);
INSERT INTO `sys_role_menu` VALUES (155, 2, 3);
INSERT INTO `sys_role_menu` VALUES (156, 2, 4);
INSERT INTO `sys_role_menu` VALUES (157, 2, 5);
INSERT INTO `sys_role_menu` VALUES (159, 2, 27);
INSERT INTO `sys_role_menu` VALUES (160, 2, 28);
INSERT INTO `sys_role_menu` VALUES (161, 2, 29);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint(20) NULL DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `room` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (-1, 'admin', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'root@renren.io', '321321', 1, NULL, '2019-01-01 11:11:11', NULL, NULL);
INSERT INTO `sys_user` VALUES (1, 'admin1', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'admin@admin.com', '13612345678', 1, NULL, '2019-01-02 11:11:11', NULL, NULL);
INSERT INTO `sys_user` VALUES (8, '李胜', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1289367@qq.com', '13354260932', 1, NULL, '2019-02-07 18:03:03', NULL, NULL);
INSERT INTO `sys_user` VALUES (9, '张大鹏', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '123123@qq.com', '13223232323', 1, -1, '2019-02-18 23:10:16', NULL, 4);
INSERT INTO `sys_user` VALUES (10, 'zhangmaowen', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '123@qq.com', '17562307526', 1, -1, '2019-02-20 19:58:44', NULL, NULL);
INSERT INTO `sys_user` VALUES (11, '张三', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1447628qq.com', '1234567', 1, -1, '2019-02-20 21:04:55', NULL, NULL);
INSERT INTO `sys_user` VALUES (12, 'xia', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '123', '1213', 1, -1, '2019-04-13 10:54:35', NULL, NULL);
INSERT INTO `sys_user` VALUES (13, 'lingege', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'lingege@126.com', '13508093423', 1, -1, '2020-12-13 18:17:00', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (7, -1, 2);
INSERT INTO `sys_user_role` VALUES (12, 9, 1);
INSERT INTO `sys_user_role` VALUES (14, 8, 1);
INSERT INTO `sys_user_role` VALUES (15, 11, 1);
INSERT INTO `sys_user_role` VALUES (16, 10, 1);
INSERT INTO `sys_user_role` VALUES (17, 12, 1);
INSERT INTO `sys_user_role` VALUES (18, 13, 1);

-- ----------------------------
-- Table structure for ts
-- ----------------------------
DROP TABLE IF EXISTS `ts`;
CREATE TABLE `ts`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '投诉标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详情',
  `user` bigint(20) NULL DEFAULT NULL COMMENT '投诉人',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物业完成状态',
  `ustate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户确认状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '投诉信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ts
-- ----------------------------
INSERT INTO `ts` VALUES (1, 'fdajkfdaskj', 'kfdjaskfdas', 1, '待确认', '已完成');
INSERT INTO `ts` VALUES (2, 'fdafdasf', '发发大水发大水分', 9, '已完成', '已完成');
INSERT INTO `ts` VALUES (3, '经常有人乱翻垃圾，卫生差', '经常看见一些大爷大妈，到垃圾站到处翻垃圾，然后搞得满地很脏！', 13, '待确认', NULL);

SET FOREIGN_KEY_CHECKS = 1;
