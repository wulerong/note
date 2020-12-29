/*
Navicat MySQL Data Transfer

Source Server         : yxzt_appcentert_test
Source Server Version : 50712
Source Host           : 172.16.17.14:3306
Source Database       : yxzt_appcentert_test

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-12-18 20:34:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for APPLICATION
-- ----------------------------
DROP TABLE IF EXISTS `APPLICATION`;
CREATE TABLE `APPLICATION` (
  `APP_ID` int(16) NOT NULL AUTO_INCREMENT COMMENT '应用编号',
  `APP_NAME` varchar(60) NOT NULL COMMENT '应用名称',
  `APP_VERSION` varchar(20) DEFAULT NULL COMMENT '应用版本',
  `APP_LINK_URL` varchar(200) NOT NULL COMMENT '链接url',
  `RELEASED_USER` int(16) NOT NULL COMMENT '发布用户-发布人的id',
  `RELEASED_DEPARTMENT` varchar(100) NOT NULL COMMENT '发布单位',
  `APP_INTRO` longtext COMMENT '应用简介',
  `APP_FLAG` int(16) DEFAULT NULL,
  `APP_STATUS` varchar(1) NOT NULL COMMENT '应用状态0：上线 1：下线',
  `APPROVE_STATUS` varchar(1) NOT NULL COMMENT '审核状态0：提出申请 1：取消申请 2：审核通过 3：审核不通过',
  `APP_GRADE` int(4) DEFAULT NULL COMMENT '应用评分',
  `APP_RECOMMEND` varchar(1) DEFAULT NULL COMMENT '是否推荐应用 0：推荐 1：强制推荐',
  `DELETE_FLAG` varchar(1) NOT NULL,
  `CREATE_USER` int(16) NOT NULL,
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_USER` int(16) DEFAULT NULL COMMENT '更新者-更新者id',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DISPLAY_ORDER` int(8) DEFAULT NULL,
  `APP_TYPE` varchar(1) NOT NULL DEFAULT '' COMMENT '应用区分(0：系统应用；1：个人应用；)',
  `APP_IF_URL` varchar(200) DEFAULT '' COMMENT '应用接口url(应用区分为0：系统应用时，选填)',
  PRIMARY KEY (`APP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of APPLICATION
-- ----------------------------
INSERT INTO `APPLICATION` VALUES ('82', '应用管理系统', '0.0.1', 'http://10.118.159.43:8200/appcenter', '1', '杭州匡信', 'center', '20', '1', '2', '5', '', '0', '1', '2017-11-09 10:49:26', '1', '2017-11-09 10:49:34', '54', '0', 'http://10.118.159.43:8200/appcenter/services/AppCerterService?wsdl');
INSERT INTO `APPLICATION` VALUES ('83', '模型商城', '0.0.1', 'http://10.118.159.43:8034/mmall', '1', '杭州匡信', 'mmall', '20', '1', '2', '5', '', '0', '1', '2017-11-09 10:51:15', '1', '2017-11-09 10:51:22', '55', '0', 'http://10.118.159.43:8034/mmall/services/MmallService?wsdl');
INSERT INTO `APPLICATION` VALUES ('116', '数据云池', '0.0.1', 'http://10.118.159.43:8033/datacloud', '1', '杭州匡信', 'datacloud', '49', '1', '2', '5', '', '0', '1', '2017-04-26 15:29:33', '1', '2017-09-29 17:10:23', '1', '0', 'http://10.118.159.43:8033/datacloud/services/DataCloudService?wsdl');

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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of SYS_AUTH_CONFIG
-- ----------------------------
INSERT INTO `SYS_AUTH_CONFIG` VALUES ('20', 'http://10.118.159.43:8208/auth', 'http://10.118.159.43:8208/auth/services/AuthService?wsdl', '0', 'center', '应用管理系统', 'http://10.118.159.43:8200/appcenter', '杭州匡信科技股份有限公司', '2017-07-31 14:04:54', '2017-12-18 20:33:39');
