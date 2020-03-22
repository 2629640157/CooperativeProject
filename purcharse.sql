/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : localhost:3306
 Source Schema         : purcharse

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : 65001

 Date: 22/03/2020 21:01:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for card_record
-- ----------------------------
DROP TABLE IF EXISTS `card_record`;
CREATE TABLE `card_record`  (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `record_company_id` int(11) NULL DEFAULT NULL,
  `money` float(25, 0) NULL DEFAULT NULL,
  `date_time` datetime NULL DEFAULT NULL,
  `type` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_spanish2_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of card_record
-- ----------------------------
INSERT INTO `card_record` VALUES (1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `caccount` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shuoming` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, '123', '淘宝', '无');
INSERT INTO `company` VALUES (2, '234', '京东', '无');
INSERT INTO `company` VALUES (3, '345', '腾讯', '无');
INSERT INTO `company` VALUES (4, '456', '阿里', '无');
INSERT INTO `company` VALUES (5, '567', '百度', '无');

-- ----------------------------
-- Table structure for date
-- ----------------------------
DROP TABLE IF EXISTS `date`;
CREATE TABLE `date`  (
  `date_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NULL DEFAULT NULL,
  `date_remark` char(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NULL DEFAULT NULL,
  `date_class` int(30) NULL DEFAULT NULL,
  PRIMARY KEY (`date_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish2_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for deal
-- ----------------------------
DROP TABLE IF EXISTS `deal`;
CREATE TABLE `deal`  (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NULL DEFAULT NULL,
  `eid` int(11) NULL DEFAULT NULL,
  `wid` int(11) NULL DEFAULT NULL,
  `people_id` int(11) NULL DEFAULT NULL,
  `starttime` datetime NULL DEFAULT NULL,
  `usefultime` datetime NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salary` int(11) NULL DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introducefee` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `submitdate` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`did`) USING BTREE,
  INDEX `fk_deal_company_1`(`cid`) USING BTREE,
  INDEX `fk_deal_employer_1`(`eid`) USING BTREE,
  INDEX `fk_deal_worker_1`(`wid`) USING BTREE,
  CONSTRAINT `fk_deal_company_1` FOREIGN KEY (`cid`) REFERENCES `company` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_deal_employer_1` FOREIGN KEY (`eid`) REFERENCES `employer` (`eid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_deal_worker_1` FOREIGN KEY (`wid`) REFERENCES `worker` (`wid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for employer
-- ----------------------------
DROP TABLE IF EXISTS `employer`;
CREATE TABLE `employer`  (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NULL DEFAULT NULL,
  `ename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `esex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `eage` int(11) NULL DEFAULT NULL,
  `nation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nativeplace` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `education` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `workplace` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `duty` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `htnumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `httime` datetime NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cellphone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hkaddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `serviceaddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `familyaddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `familynumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `require` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `habit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `other` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `agent` int(11) NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `max_salary` float(10, 2) NULL DEFAULT NULL,
  `min_salary` float(10, 2) NULL DEFAULT NULL,
  `brith` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`eid`) USING BTREE,
  INDEX `employid_companyid`(`cid`) USING BTREE,
  CONSTRAINT `employid_companyid` FOREIGN KEY (`cid`) REFERENCES `company` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of employer
-- ----------------------------
INSERT INTO `employer` VALUES (1, 2, '马云', '男', 51, '123435', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for experience
-- ----------------------------
DROP TABLE IF EXISTS `experience`;
CREATE TABLE `experience`  (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `wid` int(11) NULL DEFAULT NULL,
  `eworkplace` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kinds` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `duty` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `eworktime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`eid`) USING BTREE,
  INDEX `fk_experience_worker_1`(`wid`) USING BTREE,
  CONSTRAINT `e_w` FOREIGN KEY (`wid`) REFERENCES `worker` (`wid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of experience
-- ----------------------------
INSERT INTO `experience` VALUES (1, 2, '黑马', '讲师', '无', '2020-01-15 16:14:06');
INSERT INTO `experience` VALUES (2, 3, '北大青鸟', '领导', '总监', '2019-12-11 16:15:47');
INSERT INTO `experience` VALUES (3, 1, '软帝', '讲师', '无', '2019-12-10 16:16:32');
INSERT INTO `experience` VALUES (4, 5, '黑马', '讲师', '无', '2020-01-16 16:16:55');
INSERT INTO `experience` VALUES (5, 4, '北大青鸟', '领导', '无', '2020-02-26 10:06:28');
INSERT INTO `experience` VALUES (6, 6, '软帝', '讲师', '经理', '2020-03-11 10:06:52');
INSERT INTO `experience` VALUES (36, 10, '黑马', '讲师', '经理', '2020-03-02 00:00:00');
INSERT INTO `experience` VALUES (37, 11, '黑马', '讲师', '经理', '2020-03-09 00:00:00');

-- ----------------------------
-- Table structure for family
-- ----------------------------
DROP TABLE IF EXISTS `family`;
CREATE TABLE `family`  (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `wid` int(11) NULL DEFAULT NULL,
  `relation` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fage` int(11) NULL DEFAULT NULL,
  `fphone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fworkplace` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE,
  INDEX `fk_family_worker_1`(`wid`) USING BTREE,
  CONSTRAINT `fk_family_worker_1` FOREIGN KEY (`wid`) REFERENCES `worker` (`wid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of family
-- ----------------------------
INSERT INTO `family` VALUES (1, 6, '父子', '张思', 45, '212243123', '黑马');
INSERT INTO `family` VALUES (2, 3, '母子', '王柳', 54, '12312312', '北大青鸟');
INSERT INTO `family` VALUES (3, 2, '父子', '李琦', 43, '5646456', '软帝');
INSERT INTO `family` VALUES (4, 4, '母子', '杨旭', 45, '75645343', '黑马');
INSERT INTO `family` VALUES (5, 1, '父子', '李泽', 45, '5675675', '北大青鸟');
INSERT INTO `family` VALUES (6, 5, '母子', '凌风', 54, '7546456', '软帝');
INSERT INTO `family` VALUES (36, 10, '父子', '白云', 43, '12423124242', '黑马');
INSERT INTO `family` VALUES (37, 11, '父子', '白云', 43, '12423124242', '黑马');

-- ----------------------------
-- Table structure for inform
-- ----------------------------
DROP TABLE IF EXISTS `inform`;
CREATE TABLE `inform`  (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `informdate` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`iid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `word_id` int(30) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NULL DEFAULT NULL,
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NULL DEFAULT NULL,
  `date_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`word_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish2_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for number
-- ----------------------------
DROP TABLE IF EXISTS `number`;
CREATE TABLE `number`  (
  `number` int(40) NOT NULL AUTO_INCREMENT,
  `username` int(40) NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `company_rank` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_spanish2_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of number
-- ----------------------------
INSERT INTO `number` VALUES (1, 1, '男', '赵敏', 'asdgahg', '123', '禁用', '总公司');
INSERT INTO `number` VALUES (2, 2, '女', '李斯', 'dsaasda', '123', '已删除', '分公司');
INSERT INTO `number` VALUES (3, 3, '男', '王武', 'fdsaasd', '123', '正常', '总公司');
INSERT INTO `number` VALUES (4, 4, '女', '李柳', 'asdfdasd', '123', '禁用', '分公司');
INSERT INTO `number` VALUES (6, 6, '女', '张无忌', 'fasda', '123', '正常', '分公司');

-- ----------------------------
-- Table structure for recharge_card
-- ----------------------------
DROP TABLE IF EXISTS `recharge_card`;
CREATE TABLE `recharge_card`  (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `times` int(10) NULL DEFAULT NULL,
  `money_norm` int(30) NULL DEFAULT NULL,
  `total_amount` int(30) NULL DEFAULT NULL,
  `balance` int(30) NULL DEFAULT NULL,
  `top_company_id` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`card_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish2_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for recharge_record
-- ----------------------------
DROP TABLE IF EXISTS `recharge_record`;
CREATE TABLE `recharge_record`  (
  `recharge_id` int(11) NOT NULL AUTO_INCREMENT,
  `recharge_company_id` int(11) NULL DEFAULT NULL,
  `money` int(20) NULL DEFAULT NULL,
  `person` int(20) NULL DEFAULT NULL,
  `datetime` datetime NULL DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NULL DEFAULT NULL,
  PRIMARY KEY (`recharge_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish2_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `word_id` int(20) NULL DEFAULT NULL,
  `sender` int(10) NULL DEFAULT NULL,
  `accept` int(10) NULL DEFAULT NULL,
  `state` int(5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `word_id`(`word_id`) USING BTREE,
  CONSTRAINT `word_id` FOREIGN KEY (`word_id`) REFERENCES `message` (`word_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish2_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for train
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `wid` int(11) NULL DEFAULT NULL,
  `organization` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tstatus` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ttime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE,
  INDEX `fk_train_worker_1`(`wid`) USING BTREE,
  CONSTRAINT `fk_train_worker_1` FOREIGN KEY (`wid`) REFERENCES `worker` (`wid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of train
-- ----------------------------
INSERT INTO `train` VALUES (1, 3, '黑马', 'java', '待岗', '2020-01-07 16:18:59');
INSERT INTO `train` VALUES (2, 5, '北大青鸟', 'c++', '优秀', '2019-12-10 16:19:29');
INSERT INTO `train` VALUES (3, 2, '软帝', 'c#', '待岗', '2019-12-11 16:19:58');
INSERT INTO `train` VALUES (4, 4, '黑马', 'java', '良好', '2019-12-12 16:20:26');
INSERT INTO `train` VALUES (5, 6, '北大青鸟', 'c++', '优秀', '2019-12-10 16:20:58');
INSERT INTO `train` VALUES (6, 1, '软帝', 'java', '在岗', '2019-10-23 16:21:26');
INSERT INTO `train` VALUES (36, 10, '软帝', 'java', 'l良好', '2020-03-10 00:00:00');
INSERT INTO `train` VALUES (37, 11, '软帝', 'java', 'l良好', '2020-03-03 00:00:00');

-- ----------------------------
-- Table structure for worker
-- ----------------------------
DROP TABLE IF EXISTS `worker`;
CREATE TABLE `worker`  (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NULL DEFAULT NULL,
  `wname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wsex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birth` datetime NULL DEFAULT NULL,
  `wage` int(11) NULL DEFAULT NULL,
  `hige` int(11) NULL DEFAULT NULL,
  `cellphone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `worktime` datetime NULL DEFAULT NULL,
  `defect` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jhddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bxnumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `language` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hystatus` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zjstatus` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tjstatus` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tjtime` datetime NULL DEFAULT NULL,
  `grskills` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jieshao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timerequire` datetime NULL DEFAULT NULL,
  `salaryrequire` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `live` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `eat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `starttime` datetime NULL DEFAULT NULL,
  `hobby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`wid`) USING BTREE,
  INDEX `fk_worker_company_1`(`cid`) USING BTREE,
  CONSTRAINT `fk_worker_company_1` FOREIGN KEY (`cid`) REFERENCES `company` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of worker
-- ----------------------------
INSERT INTO `worker` VALUES (1, 2, '张三', '女', '2354155635125', '2020-03-17 21:47:00', 34, 165, '1234414123', '3451232', '清洁工', '2020-02-11 00:00:00', '无', '1.jpeg', '北京', '北京', '124312312', '2341312121', '普通话', '在岗', '未婚', '计生证', '皮肤', '2020-03-04 09:27:07', '洗衣', '我想说点什么', '2020-03-03 00:00:00', '1200-1500', '无', '无', '2020-03-10 09:41:31', '唱歌', '大专');
INSERT INTO `worker` VALUES (2, 4, '李四', '男', '1243424235', '2020-03-03 21:47:07', 32, 176, '213124122', '3241241', '保姆', '2020-02-04 00:00:00', '无', '2.jpeg', '上海', '上海', '32414123', '3243241', '广州话', '待岗', '未婚', '健康证', '胸透', '2020-03-10 09:40:12', '洗衣', '无', '2020-03-02 00:00:00', '1400-1500', '无', '无', '2020-03-05 09:41:35', '唱歌', '高中');
INSERT INTO `worker` VALUES (3, 3, '王五', '男', '1231243452', '2020-03-06 21:47:11', 32, 165, '34312312435', '324124', '月嫂', '2020-03-05 00:00:00', '无', '3.jpeg', '武汉', '武汉', '2342341432', '12312344', '英语', '待岗', '已婚', '上岗证', '皮肤', '2020-03-04 09:42:12', '打蜡', '无', '2020-02-25 00:00:00', '1600-1700', '无', '无', '2020-02-25 09:41:39', '乐器', '初中');
INSERT INTO `worker` VALUES (4, 1, '李六', '男', '1243213124', '2020-03-02 21:47:14', 34, 176, '213124124', '123123', '清洁工', '2020-02-26 00:00:00', '无', '4.jpeg', ' 南京', '南京', '32414124', '234234141', '普通话', '其他', '已婚', '上岗证', '妇科', '2020-03-10 09:48:33', '洗衣', '无', '2020-03-04 00:00:00', '2300-3400', '无', '无', '2020-03-06 09:41:43', '体育', '小学');
INSERT INTO `worker` VALUES (5, 5, 'Mary', '女', '1234353451', '2020-03-06 21:47:18', 45, 167, '123124123', '213124', '保姆', '2019-12-30 00:00:00', '无', '3.jpeg', '纽约', '纽约', '1231241', '123124123', '英语', '在岗', '未婚', '计生证', '其他', '2020-03-10 09:50:07', '客家菜', '无', '2020-02-20 00:00:00', '3400-4300', '无', '无', '2020-03-06 09:41:47', '书法', '高中');
INSERT INTO `worker` VALUES (6, 2, '谁', '男', '12354345123', '2020-03-16 21:47:24', 35, 174, '213543453', '234341', '月嫂', '2020-01-07 00:00:00', '无', '2.jpeg', '庆阳', '庆阳', '342441421', '343241', '普通话', '在岗', '已婚', '健康证', '皮肤', '2020-03-03 09:55:48', '打蜡', '无', '2020-03-11 00:00:00', '4300-2300', '无', '无', '2020-03-12 09:41:50', '乐器', '小学');
INSERT INTO `worker` VALUES (10, 1, '黑土', '男', '121243224234', '2020-03-23 00:00:00', 23, 176, '3432423423', '12312412412', '保姆', '2020-03-16 00:00:00', '无', '2.jpeg', '甘肃', '甘肃', '32432542523542', '12312412412412', '英语', '待岗', '未婚', '健康证', '胸透', '2020-03-02 00:00:00', '擦窗', '无', '2020-03-03 00:00:00', '5600-3422', '无', '无', '2020-03-17 00:00:00', '跳舞', '初中');
INSERT INTO `worker` VALUES (11, 3, '黑土', '男', '121243224234', '2020-03-23 00:00:00', 23, 176, '3432423423', '12312412412', '保姆', '2020-03-16 00:00:00', '无', '5.jpeg', '甘肃', '甘肃', '32432542523542', '12312412412412', '广州话', '待岗', '未婚', '健康证', '胸透', '2020-03-02 00:00:00', '煮饭', '无', '2020-03-03 00:00:00', '5600-3422', '无', '无', '2020-04-03 00:00:00', '唱歌', '高中');

SET FOREIGN_KEY_CHECKS = 1;
