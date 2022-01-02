/*
 Navicat MySQL Data Transfer

 Source Server         : link
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : onlinesp

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 02/01/2022 14:22:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for buyer
-- ----------------------------
DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer`  (
  `BId` int NOT NULL AUTO_INCREMENT,
  `BUsername` char(22) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `BPassword` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `BPhone` char(22) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `BAddress` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`BId`, `BUsername`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `GId` int NOT NULL AUTO_INCREMENT,
  `GName` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GCategoryone` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GCategorytwo` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GPrice` double(8, 3) NOT NULL,
  `GPicture` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GDescribe` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GStock` int NOT NULL,
  PRIMARY KEY (`GId`) USING BTREE,
  INDEX `GCId`(`GCategoryone` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase`  (
  `BId` int NOT NULL,
  `GId` int NOT NULL,
  `BPhone` char(22) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PDate` datetime NOT NULL,
  `PCount` int NOT NULL,
  `PAddress` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PState` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '交易中',
  PRIMARY KEY (`BId`, `GId`) USING BTREE,
  INDEX `GId`(`GId` ASC) USING BTREE,
  CONSTRAINT `BId` FOREIGN KEY (`BId`) REFERENCES `buyer` (`BId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `GId` FOREIGN KEY (`GId`) REFERENCES `goods` (`GId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for seller
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller`  (
  `SId` int NOT NULL AUTO_INCREMENT,
  `SUsername` char(22) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SPassword` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`SId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
