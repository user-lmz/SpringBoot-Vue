/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 06/06/2021 19:27:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `author` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `publish` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `page` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '解忧杂货店', '东野圭吾', '电子工业出版社', '102', 27.30);
INSERT INTO `book` VALUES (2, '追风筝的人', '卡勒德·胡塞尼', '上海人民出版社', '230', 33.50);
INSERT INTO `book` VALUES (3, '人间失格', '太宰治', '作家出版社', '150', 17.30);
INSERT INTO `book` VALUES (4, '这就是二十四节气', '高春香', '电子工业出版社', '220', 59.00);
INSERT INTO `book` VALUES (5, '白夜行', '东野圭吾', '南海出版公司', '300', 27.30);
INSERT INTO `book` VALUES (6, '摆渡人', '克莱儿·麦克福尔', '百花洲文艺出版社', '225', 22.80);
INSERT INTO `book` VALUES (7, '暖暖心绘本', '米兰弗特毕', '湖南少儿出版社', '168', 131.60);
INSERT INTO `book` VALUES (8, '天才在左疯子在右', '高铭', '北京联合出版公司', '330', 27.50);
INSERT INTO `book` VALUES (9, '我们仨', '杨绛', '生活，读书，知心', '89', 17.20);
INSERT INTO `book` VALUES (10, '活着', '余华', '作家出版社', '100', 100.00);
INSERT INTO `book` VALUES (11, '明朝那些事儿', '当年明月', '网络小说', '300', 59.50);
INSERT INTO `book` VALUES (21, 'OpenCV4快速入门', '冯振', '人民邮电出版社', NULL, 89.00);

SET FOREIGN_KEY_CHECKS = 1;
