/*
 Navicat Premium Data Transfer

 Source Server         : May
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : ssm

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 05/12/2019 21:59:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, '张三', '男', '15537889957', '郑州');
INSERT INTO `customer` VALUES (3, '郑红莉', '女', '15537889957', '郑州中原区');
INSERT INTO `customer` VALUES (4, '赵云', '男', '15537889957', '郑州');
INSERT INTO `customer` VALUES (5, '韩信', '男', '15537889957', '郑州中原区');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mtel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sale` double(11, 0) NULL DEFAULT NULL,
  `employdate` varchar(122) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (10, '刘晔刧', '女', '13085815682', '13085815682@163.com', 3500, '2018-12-25 14:27:16', '试用', '运维工程师');
INSERT INTO `employee` VALUES (11, '黄伛优', '男', '15085107371', '15085107371@163.com', 5500, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (12, '周聩', '女', '13085183202', '13085183202@163.com', 4500, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (14, '汤日', '男', '13085511814', '13085511814@163.com', 7800, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (15, '王佲', '女', '13085522751', '13085522751@163.com', 5600, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (16, '刘奃奀', '女', '18085655686', '18085655686@163.com', 12000, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (17, '贾伛桁', '女', '18085960733', '18085960733@163.com', 7800, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (19, '王彣', '女', '18085965969', '18085965969@163.com', 7800, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (20, '杨門岫', '男', '13085756561', '13085756561@163.com', 7800, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (24, '李莺获', '男', '15085003853', '15085003853@163.com', 7800, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (25, '刘帆关', '男', '18085815781', '18085815781@163.com', 7800, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (26, '刘丁斊', '男', '15085569610', '15085569610@163.com', 7800, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (27, '张图钮', '女', '15085179072', '15085179072@163.com', 7800, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (28, '张问', '男', '15085167744', '15085167744@163.com', 7800, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (29, '秦奍', '男', '13085143099', '13085143099@163.com', 7800, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (30, '陈喅', '女', '15085376066', '15085376066@163.com', 7800, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (31, '何芥', '女', '15085151283', '15085151283@163.com', 7800, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (32, '王传萋', '男', '13085663108', '13085663108@163.com', 7800, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (33, '侯池娚', '女', '13085385805', '13085385805@163.com', 5500, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (34, '庞争楞', '男', '15085277153', '15085277153@163.com', 5500, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (35, '杜俋霜', '女', '13085861038', '13085861038@163.com', 5500, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (36, '杨昏昌', '女', '13085496168', '13085496168@163.com', 5500, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (37, '李婶', '女', '18085056881', '18085056881@163.com', 5500, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (39, '沈臫豨', '男', '18085303231', '18085303231@163.com', 5500, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (40, '韩靘', '女', '15085996869', '15085996869@163.com', 3400, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (41, '薛斺勅', '男', '18085608689', '18085608689@163.com', 3400, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (42, '刘炛', '男', '15085368746', '15085368746@163.com', 3400, '2018-12-25 14:27:16', '离职', '开发工程师');
INSERT INTO `employee` VALUES (47, '蔡挰卌', '男', '13085446758', '13085446758@163.com', 2200, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (53, '张渷', '男', '13085529912', '13085529912@163.com', 2200, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (54, '赵些妀', '女', '15085936297', '15085936297@163.com', 2200, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (55, '张淒鑩', '女', '18085106590', '18085106590@163.com', 6700, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (56, '周倪亏', '男', '13085603274', '13085603274@163.com', 2200, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (57, '余娛', '女', '13085316775', '13085316775@163.com', 2200, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (58, '王眠眝', '女', '18085152224', '18085152224@163.com', 2200, '2018-12-25 14:27:16', '离职', '开发工程师');
INSERT INTO `employee` VALUES (59, '陈凰瑜', '男', '15085869157', '15085869157@163.com', 2200, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (60, '杨氹趃', '男', '13085572871', '13085572871@163.com', 2200, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (61, '杨昔汝', '男', '15085330312', '15085330312@163.com', 2200, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (62, '钟斺斷', '女', '13085444707', '13085444707@163.com', 2200, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (63, '张涚', '男', '18085831993', '18085831993@163.com', 2200, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (64, '肇慨慥', '女', '13085723566', '13085723566@163.com', 1000, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (65, '杨梧伝', '女', '15085788023', '15085788023@163.com', 1000, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (66, '吕鑬尥', '女', '15085757738', '15085757738@163.com', 999, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (67, '侯玊倧', '女', '15085629753', '15085629753@163.com', 999, '2018-12-25 14:27:16', '离职', '开发工程师');
INSERT INTO `employee` VALUES (68, '史晔伤', '男', '13085579676', '13085579676@163.com', 999, '2018-12-25 14:27:16', '离职', '开发工程师');
INSERT INTO `employee` VALUES (71, '赵弻飜', '男', '17085123305', '17085123305@163.com', 999, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (75, '王瑟琤', '女', '18085576617', '18085576617@163.com', 999, '2018-12-25 14:27:16', '离职', '开发工程师');
INSERT INTO `employee` VALUES (76, '张冈', '女', '18085166711', '18085166711@163.com', 999, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (77, '赵亐', '男', '13085049564', '13085049564@163.com', 999, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (78, '王姢', '女', '18085210605', '18085210605@163.com', 999, '2018-12-25 14:27:16', '试用', '开发工程师');
INSERT INTO `employee` VALUES (84, '1', '1', '1', '1', 1213, '12', '12', '1');

SET FOREIGN_KEY_CHECKS = 1;
