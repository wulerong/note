/*
Navicat MySQL Data Transfer

Source Server         : yxzt_datacloud_test
Source Server Version : 50712
Source Host           : 172.16.17.14:3306
Source Database       : yxzt_datacloud_test

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-12-18 20:29:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for SYS_AUTH_CONFIG
-- ----------------------------
DROP TABLE IF EXISTS `SYS_AUTH_CONFIG`;
CREATE TABLE `SYS_AUTH_CONFIG` (
  `ID` int(16) NOT NULL AUTO_INCREMENT,
  `SERVICE_URL` varchar(500) DEFAULT NULL,
  `WEBSERVICE_URL` varchar(500) DEFAULT NULL COMMENT '认证服务器URL',
  `ENABLED_FLAG` varchar(1) DEFAULT '0' COMMENT '是否启用',
  `APPLICATION_KEY` varchar(20) DEFAULT NULL,
  `APPLICATION_NAME` varchar(50) DEFAULT NULL,
  `APPLICATION_URL` varchar(500) DEFAULT NULL,
  `DEVELOPER_NAME` varchar(50) DEFAULT NULL,
  `CREATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `ENABLED_FLAG_INDEX` (`ENABLED_FLAG`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of SYS_AUTH_CONFIG
-- ----------------------------
INSERT INTO `SYS_AUTH_CONFIG` VALUES ('1', 'http://10.118.159.43:8208/auth', 'http://10.118.159.43:8208/auth/services/AuthService?wsdl', '0', 'datacloud', '数据云池', 'http://10.118.159.43:8033/datacloud', '杭州匡信科技股份有限公司', '2017-10-31 11:47:13', '2017-12-18 20:28:19');
