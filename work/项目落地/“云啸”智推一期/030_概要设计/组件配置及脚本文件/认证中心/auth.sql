/*
Navicat MySQL Data Transfer

Source Server         : yxzt_auth_test
Source Server Version : 50712
Source Host           : 172.16.17.14:3306
Source Database       : yxzt_auth_test

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-12-18 20:32:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for API_APPLICATION
-- ----------------------------
DROP TABLE IF EXISTS `API_APPLICATION`;
CREATE TABLE `API_APPLICATION` (
  `ID` int(16) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `API_NAME` varchar(50) DEFAULT NULL COMMENT '应用系统名称',
  `API_URL` varchar(100) DEFAULT NULL COMMENT '应用系统URL',
  `SYS_KEY` varchar(100) NOT NULL COMMENT '应用系统Key',
  `API_DEVELOPER` varchar(50) DEFAULT NULL COMMENT '应用系统开发商',
  `DEPARTMENT_ID` varchar(50) DEFAULT NULL COMMENT '管理部门编码',
  `COMMENT` varchar(200) DEFAULT NULL COMMENT '备注说明',
  `DELETE_FLAG` varchar(1) NOT NULL DEFAULT '0' COMMENT '1 删除 0 正常',
  `CREATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of API_APPLICATION
-- ----------------------------
INSERT INTO `API_APPLICATION` VALUES ('19', '应用管理系统', 'http://10.118.159.43:8200/appcenter', 'center', '杭州匡信科技股份有限公司', null, null, '0', '2017-07-31 14:04:54');
INSERT INTO `API_APPLICATION` VALUES ('49', '模型商城', 'http://10.118.159.43:8034/mmall', 'mmall', '杭州匡信科技股份有限公司', null, null, '0', '2017-12-14 18:26:54');
INSERT INTO `API_APPLICATION` VALUES ('50', '数据云池', 'http://10.118.159.43:8033/datacloud', 'datacloud', '杭州匡信科技股份有限公司', null, null, '0', '2017-12-14 18:27:07');
