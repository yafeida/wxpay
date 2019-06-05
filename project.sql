/*
Navicat MySQL Data Transfer

Source Server         : master
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-09-10 17:51:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('MyScheduler', 'TASK_12', 'DEFAULT', '0/1 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('MyScheduler', 'TASK_12', 'DEFAULT', null, 'com.monkey.job.util.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B455973720019636F6D2E6D6F6E6B65792E6A6F622E646F6D61696E2E4A6F62058D52AC1093A3040200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C000673746174757371007E00097870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000165B300DBBB7874000D302F31202A202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000C7400047465737474000B68656C6C6F20776F726C64740018E69C89E58F82E4BBBBE58AA1E8B083E5BAA6E6B58BE8AF95740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('MyScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('MyScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('MyScheduler', 'lks1536572830180', '1536573046024', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('MyScheduler', 'TASK_12', 'DEFAULT', 'TASK_12', 'DEFAULT', null, '1536306502000', '-1', '5', 'PAUSED', 'CRON', '1536306502000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B455973720019636F6D2E6D6F6E6B65792E6A6F622E646F6D61696E2E4A6F62058D52AC1093A3040200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C000673746174757371007E00097870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000165B300DD587874000D302F31202A202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000C7400047465737474000B68656C6C6F20776F726C64740018E69C89E58F82E4BBBBE58AA1E8B083E5BAA6E6B58BE8AF95740001317800);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '222', '333');

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
  `DEPT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级部门ID',
  `DEPT_NAME` varchar(100) NOT NULL COMMENT '部门名称',
  `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES ('1', '0', '开发部', null, '2018-01-04 15:42:26');
INSERT INTO `t_dept` VALUES ('4', '0', '市场部', null, '2018-01-04 15:42:36');
INSERT INTO `t_dept` VALUES ('5', '0', '人事部', null, '2018-01-04 15:42:32');
INSERT INTO `t_dept` VALUES ('6', '0', '测试部', null, '2018-01-04 15:42:38');

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `DICT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典ID',
  `KEYY` bigint(20) NOT NULL COMMENT '键',
  `VALUEE` varchar(100) NOT NULL COMMENT '值',
  `FIELD_NAME` varchar(100) NOT NULL COMMENT '字段名称',
  `TABLE_NAME` varchar(100) NOT NULL COMMENT '表名',
  PRIMARY KEY (`DICT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES ('1', '0', '男', 'ssex', 't_user');
INSERT INTO `t_dict` VALUES ('2', '1', '女', 'ssex', 't_user');
INSERT INTO `t_dict` VALUES ('3', '2', '保密', 'ssex', 't_user');
INSERT INTO `t_dict` VALUES ('4', '1', '有效', 'status', 't_user');
INSERT INTO `t_dict` VALUES ('5', '0', '锁定', 'status', 't_user');
INSERT INTO `t_dict` VALUES ('6', '0', '菜单', 'type', 't_menu');
INSERT INTO `t_dict` VALUES ('7', '1', '按钮', 'type', 't_menu');
INSERT INTO `t_dict` VALUES ('30', '0', '正常', 'status', 't_job');
INSERT INTO `t_dict` VALUES ('31', '1', '暂停', 'status', 't_job');
INSERT INTO `t_dict` VALUES ('32', '0', '成功', 'status', 't_job_log');
INSERT INTO `t_dict` VALUES ('33', '1', '失败', 'status', 't_job_log');

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job` (
  `JOB_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `BEAN_NAME` varchar(100) NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(100) NOT NULL COMMENT '方法名',
  `PARAMS` varchar(200) DEFAULT NULL COMMENT '参数',
  `CRON_EXPRESSION` varchar(100) NOT NULL COMMENT 'cron表达式',
  `STATUS` char(2) NOT NULL COMMENT '任务状态  0：正常  1：暂停',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_job
-- ----------------------------
INSERT INTO `t_job` VALUES ('12', 'testTask', 'test', 'hello world', '0/1 * * * * ?', '1', '有参任务调度测试', '2018-09-07 15:48:23');

-- ----------------------------
-- Table structure for t_job_log
-- ----------------------------
DROP TABLE IF EXISTS `t_job_log`;
CREATE TABLE `t_job_log` (
  `LOG_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `JOB_ID` bigint(20) NOT NULL COMMENT '任务id',
  `BEAN_NAME` varchar(100) NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(100) NOT NULL COMMENT '方法名',
  `PARAMS` varchar(200) DEFAULT NULL COMMENT '参数',
  `STATUS` char(2) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `ERROR` text COMMENT '失败信息',
  `TIMES` decimal(11,0) DEFAULT NULL COMMENT '耗时(单位：毫秒)',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2868 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text COMMENT '操作内容',
  `TIME` decimal(11,0) DEFAULT NULL COMMENT '耗时',
  `METHOD` text COMMENT '操作方法',
  `PARAMS` text COMMENT '方法参数',
  `IP` varchar(64) DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('985', 'superAdmin', '获取定时任务信息', '3', 'com.monkey.job.controller.JobController.index()', '', '127.0.0.1', '2018-09-07 15:21:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('986', 'superAdmin', '访问系统', '7', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-06 16:16:02\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-07 15:38:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('987', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-06 16:16:02\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-07 15:38:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('988', 'superAdmin', '获取定时任务信息', '4', 'com.monkey.job.controller.JobController.index()', '', '127.0.0.1', '2018-09-07 15:38:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('989', 'superAdmin', '删除任务', '86', 'com.monkey.job.controller.JobController.deleteJob()', 'ids: \"1,2,3,11\"', '127.0.0.1', '2018-09-07 15:38:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('990', 'superAdmin', '获取定时任务信息', '0', 'com.monkey.job.controller.JobController.index()', '', '127.0.0.1', '2018-09-07 15:39:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('991', 'superAdmin', '获取调度日志信息', '4', 'com.monkey.job.controller.JobLogController.index()', '', '127.0.0.1', '2018-09-07 15:39:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('992', 'superAdmin', '获取定时任务信息', '1', 'com.monkey.job.controller.JobController.index()', '', '127.0.0.1', '2018-09-07 15:39:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('993', 'superAdmin', '获取调度日志信息', '0', 'com.monkey.job.controller.JobLogController.index()', '', '127.0.0.1', '2018-09-07 15:39:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('994', 'superAdmin', '获取定时任务信息', '0', 'com.monkey.job.controller.JobController.index()', '', '127.0.0.1', '2018-09-07 15:39:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('995', 'superAdmin', '访问系统', '6', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-06 16:16:02\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-07 15:47:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('996', 'superAdmin', '获取定时任务信息', '5', 'com.monkey.job.controller.JobController.index()', '', '127.0.0.1', '2018-09-07 15:47:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('997', 'superAdmin', '新增任务', '97', 'com.monkey.job.controller.JobController.addJob()', 'job: {\"jobId\":12,\"beanName\":\"testTask\",\"methodName\":\"test\",\"params\":\"hello world\",\"cronExpression\":\"0/1 * * * * ?\",\"status\":\"1\",\"remark\":\"有参任务调度测试\",\"createTime\":\"2018-09-07 15:48:22\"}', '127.0.0.1', '2018-09-07 15:48:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('998', 'superAdmin', '执行任务', '44', 'com.monkey.job.controller.JobController.runJob()', 'jobIds: \"12\"', '127.0.0.1', '2018-09-07 15:48:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('999', 'superAdmin', '修改任务', '47', 'com.monkey.job.controller.JobController.updateJob()', 'job: {\"jobId\":12,\"beanName\":\"testTask\",\"methodName\":\"test\",\"params\":\"hello world\",\"cronExpression\":\"0/1 * * * * ?\",\"status\":\"1\",\"remark\":\"有参任务调度测试\",\"createTime\":null}', '127.0.0.1', '2018-09-07 15:48:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1000', 'superAdmin', '修改任务', '82', 'com.monkey.job.controller.JobController.updateJob()', 'job: {\"jobId\":12,\"beanName\":\"testTask\",\"methodName\":\"test\",\"params\":\"hello world\",\"cronExpression\":\"0/1 * * * * ?\",\"status\":\"1\",\"remark\":\"有参任务调度测试\",\"createTime\":null}', '127.0.0.1', '2018-09-07 15:49:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1001', 'superAdmin', '执行任务', '44', 'com.monkey.job.controller.JobController.runJob()', 'jobIds: \"12\"', '127.0.0.1', '2018-09-07 15:49:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1002', 'superAdmin', '恢复任务', '147', 'com.monkey.job.controller.JobController.resumeJob()', 'jobIds: \"12\"', '127.0.0.1', '2018-09-07 15:49:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1003', 'superAdmin', '暂停任务', '37', 'com.monkey.job.controller.JobController.pauseJob()', 'jobIds: \"12\"', '127.0.0.1', '2018-09-07 15:55:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1004', 'superAdmin', '获取菜单信息', '0', 'com.monkey.system.controller.MenuController.index()', '', '127.0.0.1', '2018-09-07 16:12:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1005', 'superAdmin', '获取系统所有URL', '10', 'com.monkey.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-09-07 16:12:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1006', 'superAdmin', '访问系统', '4', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-07 15:21:30\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 10:06:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1007', 'superAdmin', '获取定时任务信息', '4', 'com.monkey.job.controller.JobController.index()', '', '127.0.0.1', '2018-09-10 10:07:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1008', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-07 15:21:30\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 10:26:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1009', 'superAdmin', '获取用户信息', '87', 'com.monkey.system.controller.UserController.userList()', 'request: {\"pageSize\":10,\"pageNum\":1}  user: {\"userId\":null,\"username\":\"\",\"password\":null,\"deptId\":null,\"deptName\":null,\"email\":null,\"mobile\":null,\"status\":\"\",\"crateTime\":null,\"modifyTime\":null,\"lastLoginTime\":null,\"ssex\":\"\",\"theme\":null,\"avatar\":null,\"description\":null,\"salt\":null,\"roleName\":null}', '127.0.0.1', '2018-09-10 10:34:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1010', 'superAdmin', '获取角色信息', '0', 'com.monkey.system.controller.RoleController.index()', '', '127.0.0.1', '2018-09-10 10:34:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1011', 'superAdmin', '获取菜单信息', '0', 'com.monkey.system.controller.MenuController.index()', '', '127.0.0.1', '2018-09-10 10:34:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1012', 'superAdmin', '获取系统所有URL', '18', 'com.monkey.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-09-10 10:34:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1013', 'superAdmin', '获取部门信息', '0', 'com.monkey.system.controller.DeptController.index()', '', '127.0.0.1', '2018-09-10 10:34:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1014', 'superAdmin', '获取字典信息', '3', 'com.monkey.system.controller.DictController.index()', '', '127.0.0.1', '2018-09-10 10:34:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1015', 'superAdmin', '获取角色信息', '0', 'com.monkey.system.controller.RoleController.index()', '', '127.0.0.1', '2018-09-10 10:34:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1016', 'superAdmin', '获取用户信息', '0', 'com.monkey.system.controller.UserController.userList()', 'request: {\"pageSize\":10,\"pageNum\":1}  user: {\"userId\":null,\"username\":\"\",\"password\":null,\"deptId\":null,\"deptName\":null,\"email\":null,\"mobile\":null,\"status\":\"\",\"crateTime\":null,\"modifyTime\":null,\"lastLoginTime\":null,\"ssex\":\"\",\"theme\":null,\"avatar\":null,\"description\":null,\"salt\":null,\"roleName\":null}', '127.0.0.1', '2018-09-10 10:34:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1017', 'superAdmin', '获取天气信息', '3', 'com.monkey.web.controller.WeatherController.weather()', '', '127.0.0.1', '2018-09-10 10:44:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1018', 'superAdmin', '访问系统', '5', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-07 15:21:30\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 15:40:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1019', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-07 15:21:30\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 15:40:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1020', 'superAdmin', '获取用户信息', '28', 'com.monkey.system.controller.UserController.userList()', 'request: {\"pageSize\":10,\"pageNum\":1}  user: {\"userId\":null,\"username\":\"\",\"password\":null,\"deptId\":null,\"deptName\":null,\"email\":null,\"mobile\":null,\"status\":\"\",\"crateTime\":null,\"modifyTime\":null,\"lastLoginTime\":null,\"ssex\":\"\",\"theme\":null,\"avatar\":null,\"description\":null,\"salt\":null,\"roleName\":null}', '127.0.0.1', '2018-09-10 16:00:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1021', 'superAdmin', '获取天气信息', '3', 'com.monkey.web.controller.WeatherController.weather()', '', '127.0.0.1', '2018-09-10 16:02:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1022', 'superAdmin', '获取每日一文信息', '2', 'com.monkey.web.controller.ArticleController.index()', '', '127.0.0.1', '2018-09-10 16:02:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1023', 'superAdmin', '获取One--绘画信息', '4', 'com.monkey.web.controller.OneIsAllController.paintIndex()', '', '127.0.0.1', '2018-09-10 16:03:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1024', 'superAdmin', '老子测试了一波', '260', 'com.monkey.web.controller.LksTestController.test()', '', '127.0.0.1', '2018-09-10 16:46:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1025', 'superAdmin', '获取即将上映电影信息', '3', 'com.monkey.web.controller.MovieController.movieComing()', '', '127.0.0.1', '2018-09-10 16:46:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1026', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-07 15:21:30\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 16:46:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1027', 'superAdmin', '获取菜单信息', '0', 'com.monkey.system.controller.MenuController.index()', '', '127.0.0.1', '2018-09-10 16:48:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1028', 'superAdmin', '获取系统所有URL', '44', 'com.monkey.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-09-10 16:48:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1029', 'superAdmin', '新增菜单/按钮', '35', 'com.monkey.system.controller.MenuController.addMenu()', 'menu: \"com.monkey.system.domain.Menu@53d32767\"', '127.0.0.1', '2018-09-10 16:49:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1030', 'superAdmin', '获取角色信息', '3', 'com.monkey.system.controller.RoleController.index()', '', '127.0.0.1', '2018-09-10 16:49:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1031', 'superAdmin', '获取菜单信息', '0', 'com.monkey.system.controller.MenuController.index()', '', '127.0.0.1', '2018-09-10 16:49:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1032', 'superAdmin', '获取系统所有URL', '2', 'com.monkey.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-09-10 16:49:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1033', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-07 15:21:30\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 16:49:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1034', 'superAdmin', '获取用户信息', '3', 'com.monkey.system.controller.UserController.userList()', 'request: {\"pageSize\":10,\"pageNum\":1}  user: {\"userId\":null,\"username\":\"\",\"password\":null,\"deptId\":null,\"deptName\":null,\"email\":null,\"mobile\":null,\"status\":\"\",\"crateTime\":null,\"modifyTime\":null,\"lastLoginTime\":null,\"ssex\":\"\",\"theme\":null,\"avatar\":null,\"description\":null,\"salt\":null,\"roleName\":null}', '127.0.0.1', '2018-09-10 16:49:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1035', 'superAdmin', '获取角色信息', '0', 'com.monkey.system.controller.RoleController.index()', '', '127.0.0.1', '2018-09-10 16:49:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1036', 'superAdmin', '获取字典信息', '3', 'com.monkey.system.controller.DictController.index()', '', '127.0.0.1', '2018-09-10 16:49:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1037', 'superAdmin', '获取部门信息', '0', 'com.monkey.system.controller.DeptController.index()', '', '127.0.0.1', '2018-09-10 16:49:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1038', 'superAdmin', '获取菜单信息', '0', 'com.monkey.system.controller.MenuController.index()', '', '127.0.0.1', '2018-09-10 16:49:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1039', 'superAdmin', '获取系统所有URL', '1', 'com.monkey.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-09-10 16:49:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1040', 'superAdmin', '获取角色信息', '0', 'com.monkey.system.controller.RoleController.index()', '', '127.0.0.1', '2018-09-10 16:50:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1041', 'superAdmin', '修改角色', '174', 'com.monkey.system.controller.RoleController.updateRole()', 'role: \"com.monkey.system.domain.Role@63c508f2\"  menuId: \"[Ljava.lang.Long;@16592acc\"', '127.0.0.1', '2018-09-10 16:50:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1042', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-07 15:21:30\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 16:50:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1043', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-07 15:21:30\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 16:50:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1044', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-07 15:21:30\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 16:51:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1045', 'superAdmin', '获取菜单信息', '0', 'com.monkey.system.controller.MenuController.index()', '', '127.0.0.1', '2018-09-10 16:51:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1046', 'superAdmin', '获取系统所有URL', '1', 'com.monkey.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-09-10 16:51:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1047', 'superAdmin', '删除菜单', '84', 'com.monkey.system.controller.MenuController.deleteMenus()', 'ids: \"115\"', '127.0.0.1', '2018-09-10 16:51:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1048', 'superAdmin', '访问系统', '3', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 16:58:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1049', 'superAdmin', '访问系统', '3', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:07:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1050', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:13:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1051', 'superAdmin', '获取菜单信息', '0', 'com.monkey.system.controller.MenuController.index()', '', '127.0.0.1', '2018-09-10 17:13:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1052', 'superAdmin', '获取系统所有URL', '36', 'com.monkey.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-09-10 17:13:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1053', 'superAdmin', '新增菜单/按钮', '45', 'com.monkey.system.controller.MenuController.addMenu()', 'menu: \"com.monkey.system.domain.Menu@308faf2a\"', '127.0.0.1', '2018-09-10 17:14:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1054', 'superAdmin', '获取角色信息', '5', 'com.monkey.system.controller.RoleController.index()', '', '127.0.0.1', '2018-09-10 17:14:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1055', 'superAdmin', '修改角色', '135', 'com.monkey.system.controller.RoleController.updateRole()', 'role: \"com.monkey.system.domain.Role@2a694d8a\"  menuId: \"[Ljava.lang.Long;@66484d95\"', '127.0.0.1', '2018-09-10 17:14:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1056', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:14:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1057', 'superAdmin', '访问系统', '7', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:15:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1058', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:15:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1059', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:17:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1060', 'superAdmin', '访问系统', '1', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:17:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1061', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:18:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1062', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:21:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1063', 'superAdmin', '访问系统', '1', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:22:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1064', 'superAdmin', '访问系统', '1', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:23:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1065', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:23:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1066', 'superAdmin', '老子测试了一波', '234', 'com.monkey.web.controller.LksTestController.test()', '', '127.0.0.1', '2018-09-10 17:24:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1067', 'superAdmin', '获取菜单信息', '0', 'com.monkey.system.controller.MenuController.index()', '', '127.0.0.1', '2018-09-10 17:24:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1068', 'superAdmin', '获取系统所有URL', '105', 'com.monkey.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-09-10 17:24:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1069', 'superAdmin', '修改菜单/按钮', '37', 'com.monkey.system.controller.MenuController.updateMenu()', 'menu: \"com.monkey.system.domain.Menu@1d51eeca\"', '127.0.0.1', '2018-09-10 17:25:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1070', 'superAdmin', '访问系统', '7', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:30:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1071', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:30:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1072', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:30:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1073', 'superAdmin', '获取菜单信息', '0', 'com.monkey.system.controller.MenuController.index()', '', '127.0.0.1', '2018-09-10 17:30:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1074', 'superAdmin', '获取系统所有URL', '31', 'com.monkey.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-09-10 17:30:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1075', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:31:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1076', 'superAdmin', '获取菜单信息', '0', 'com.monkey.system.controller.MenuController.index()', '', '127.0.0.1', '2018-09-10 17:31:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1077', 'superAdmin', '获取系统所有URL', '1', 'com.monkey.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-09-10 17:31:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1078', 'superAdmin', '删除菜单', '48', 'com.monkey.system.controller.MenuController.deleteMenus()', 'ids: \"116\"', '127.0.0.1', '2018-09-10 17:31:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1079', 'superAdmin', '新增菜单/按钮', '40', 'com.monkey.system.controller.MenuController.addMenu()', 'menu: \"com.monkey.system.domain.Menu@4b03dabb\"', '127.0.0.1', '2018-09-10 17:32:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1080', 'superAdmin', '获取用户信息', '3', 'com.monkey.system.controller.UserController.userList()', 'request: {\"pageSize\":10,\"pageNum\":1}  user: {\"userId\":null,\"username\":\"\",\"password\":null,\"deptId\":null,\"deptName\":null,\"email\":null,\"mobile\":null,\"status\":\"\",\"crateTime\":null,\"modifyTime\":null,\"lastLoginTime\":null,\"ssex\":\"\",\"theme\":null,\"avatar\":null,\"description\":null,\"salt\":null,\"roleName\":null}', '127.0.0.1', '2018-09-10 17:32:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1081', 'superAdmin', '获取角色信息', '0', 'com.monkey.system.controller.RoleController.index()', '', '127.0.0.1', '2018-09-10 17:32:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1082', 'superAdmin', '修改角色', '137', 'com.monkey.system.controller.RoleController.updateRole()', 'role: \"com.monkey.system.domain.Role@3fc87b67\"  menuId: \"[Ljava.lang.Long;@7e08a87a\"', '127.0.0.1', '2018-09-10 17:32:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1083', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:32:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1084', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:33:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1085', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:35:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1086', 'superAdmin', '获取角色信息', '0', 'com.monkey.system.controller.RoleController.index()', '', '127.0.0.1', '2018-09-10 17:35:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1087', 'superAdmin', '获取菜单信息', '0', 'com.monkey.system.controller.MenuController.index()', '', '127.0.0.1', '2018-09-10 17:35:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1088', 'superAdmin', '获取系统所有URL', '1', 'com.monkey.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-09-10 17:35:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1089', 'superAdmin', '访问系统', '9', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:42:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1090', 'superAdmin', '获取角色信息', '3', 'com.monkey.system.controller.RoleController.index()', '', '127.0.0.1', '2018-09-10 17:42:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1091', 'superAdmin', '获取菜单信息', '0', 'com.monkey.system.controller.MenuController.index()', '', '127.0.0.1', '2018-09-10 17:42:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1092', 'superAdmin', '获取系统所有URL', '35', 'com.monkey.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-09-10 17:42:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1093', 'superAdmin', '新增菜单/按钮', '34', 'com.monkey.system.controller.MenuController.addMenu()', 'menu: \"com.monkey.system.domain.Menu@20742dfe\"', '127.0.0.1', '2018-09-10 17:43:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1094', 'superAdmin', '获取用户信息', '4', 'com.monkey.system.controller.UserController.userList()', 'request: {\"pageSize\":10,\"pageNum\":1}  user: {\"userId\":null,\"username\":\"\",\"password\":null,\"deptId\":null,\"deptName\":null,\"email\":null,\"mobile\":null,\"status\":\"\",\"crateTime\":null,\"modifyTime\":null,\"lastLoginTime\":null,\"ssex\":\"\",\"theme\":null,\"avatar\":null,\"description\":null,\"salt\":null,\"roleName\":null}', '127.0.0.1', '2018-09-10 17:43:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1095', 'superAdmin', '获取角色信息', '0', 'com.monkey.system.controller.RoleController.index()', '', '127.0.0.1', '2018-09-10 17:43:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1096', 'superAdmin', '修改角色', '137', 'com.monkey.system.controller.RoleController.updateRole()', 'role: \"com.monkey.system.domain.Role@5f6f422a\"  menuId: \"[Ljava.lang.Long;@4b2b7792\"', '127.0.0.1', '2018-09-10 17:43:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1097', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:43:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1098', 'superAdmin', '访问系统', '6', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:44:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1099', 'superAdmin', '访问接口列表页面', '5', 'com.monkey.system.controller.SwaggerController.skipSwagger()', '', '127.0.0.1', '2018-09-10 17:44:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1100', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:44:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1101', 'superAdmin', '访问接口列表页面', '0', 'com.monkey.system.controller.SwaggerController.skipSwagger()', '', '127.0.0.1', '2018-09-10 17:44:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1102', 'superAdmin', '访问接口列表页面', '0', 'com.monkey.system.controller.SwaggerController.skipSwagger()', '', '127.0.0.1', '2018-09-10 17:45:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1103', 'superAdmin', '获取角色信息', '7', 'com.monkey.system.controller.RoleController.index()', '', '127.0.0.1', '2018-09-10 17:45:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1104', 'superAdmin', '获取菜单信息', '0', 'com.monkey.system.controller.MenuController.index()', '', '127.0.0.1', '2018-09-10 17:45:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1105', 'superAdmin', '获取系统所有URL', '44', 'com.monkey.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-09-10 17:45:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1106', 'superAdmin', '获取角色信息', '0', 'com.monkey.system.controller.RoleController.index()', '', '127.0.0.1', '2018-09-10 17:46:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1107', 'superAdmin', '访问系统', '8', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:47:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1108', 'superAdmin', '访问接口列表页面', '2', 'com.monkey.system.controller.SwaggerController.skipSwagger()', '', '127.0.0.1', '2018-09-10 17:47:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1109', 'superAdmin', '访问接口列表页面', '0', 'com.monkey.system.controller.SwaggerController.skipSwagger()', '', '127.0.0.1', '2018-09-10 17:47:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1110', 'superAdmin', '访问接口列表页面', '0', 'com.monkey.system.controller.SwaggerController.skipSwagger()', '', '127.0.0.1', '2018-09-10 17:47:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1111', 'superAdmin', '访问接口列表页面', '0', 'com.monkey.system.controller.SwaggerController.skipSwagger()', '', '127.0.0.1', '2018-09-10 17:47:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1112', 'superAdmin', '获取菜单信息', '0', 'com.monkey.system.controller.MenuController.index()', '', '127.0.0.1', '2018-09-10 17:47:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1113', 'superAdmin', '获取系统所有URL', '46', 'com.monkey.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-09-10 17:47:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1114', 'superAdmin', '删除菜单', '97', 'com.monkey.system.controller.MenuController.deleteMenus()', 'ids: \"118\"', '127.0.0.1', '2018-09-10 17:47:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1115', 'superAdmin', '访问系统', '0', 'com.monkey.system.controller.LoginController.index()', 'user: {\"userId\":93,\"username\":\"superAdmin\",\"password\":\"89eeca855a460c4ce9d4caf8ee04984b\",\"deptId\":1,\"deptName\":null,\"email\":\"948445086@qq.com\",\"mobile\":\"18764166237\",\"status\":\"1\",\"crateTime\":\"2018-09-06 16:15:29\",\"modifyTime\":null,\"lastLoginTime\":\"2018-09-10 10:06:58\",\"ssex\":\"2\",\"theme\":\"blue-grey\",\"avatar\":\"default.jpg\",\"description\":null,\"salt\":\"af05e69008a24dd68a4b5b356a46d6a6\",\"roleName\":null}  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-09-10 17:47:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1116', 'superAdmin', '获取字典信息', '4', 'com.monkey.system.controller.DictController.index()', '', '127.0.0.1', '2018-09-10 17:48:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1117', 'superAdmin', '访问接口列表页面', '0', 'com.monkey.system.controller.SwaggerController.skipSwagger()', '', '127.0.0.1', '2018-09-10 17:48:02', '内网IP|0|0|内网IP|内网IP');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `MENU_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单/按钮名称',
  `URL` varchar(100) DEFAULT NULL COMMENT '菜单URL',
  `PERMS` text COMMENT '权限标识',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '0', '系统管理', null, null, 'zmdi zmdi-settings', '0', '1', '2017-12-27 16:39:07', null);
INSERT INTO `t_menu` VALUES ('2', '0', '系统监控', null, null, 'zmdi zmdi-shield-security', '0', '2', '2017-12-27 16:45:51', '2018-01-17 17:08:28');
INSERT INTO `t_menu` VALUES ('3', '1', '用户管理', 'user', 'user:list', '', '0', '1', '2017-12-27 16:47:13', '2018-04-25 09:00:01');
INSERT INTO `t_menu` VALUES ('4', '1', '角色管理', 'role', 'role:list', '', '0', '2', '2017-12-27 16:48:09', '2018-04-25 09:01:12');
INSERT INTO `t_menu` VALUES ('5', '1', '菜单管理', 'menu', 'menu:list', '', '0', '3', '2017-12-27 16:48:57', '2018-04-25 09:01:30');
INSERT INTO `t_menu` VALUES ('6', '1', '部门管理', 'dept', 'dept:list', '', '0', '4', '2017-12-27 16:57:33', '2018-04-25 09:01:40');
INSERT INTO `t_menu` VALUES ('8', '2', '在线用户', 'session', 'session:list', '', '0', '1', '2017-12-27 16:59:33', '2018-04-25 09:02:04');
INSERT INTO `t_menu` VALUES ('10', '2', '系统日志', 'log', 'log:list', '', '0', '3', '2017-12-27 17:00:50', '2018-04-25 09:02:18');
INSERT INTO `t_menu` VALUES ('11', '3', '新增用户', null, 'user:add', null, '1', null, '2017-12-27 17:02:58', null);
INSERT INTO `t_menu` VALUES ('12', '3', '修改用户', null, 'user:update', null, '1', null, '2017-12-27 17:04:07', null);
INSERT INTO `t_menu` VALUES ('13', '3', '删除用户', null, 'user:delete', null, '1', null, '2017-12-27 17:04:58', null);
INSERT INTO `t_menu` VALUES ('14', '4', '新增角色', null, 'role:add', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('15', '4', '修改角色', null, 'role:update', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('16', '4', '删除角色', null, 'role:delete', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('17', '5', '新增菜单', null, 'menu:add', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('18', '5', '修改菜单', null, 'menu:update', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('19', '5', '删除菜单', null, 'menu:delete', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('20', '6', '新增部门', null, 'dept:add', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('21', '6', '修改部门', null, 'dept:update', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('22', '6', '删除部门', null, 'dept:delete', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('23', '8', '踢出用户', null, 'user:kickout', null, '1', null, '2017-12-27 17:11:13', null);
INSERT INTO `t_menu` VALUES ('24', '10', '删除日志', null, 'log:delete', null, '1', null, '2017-12-27 17:11:45', null);
INSERT INTO `t_menu` VALUES ('58', '0', '网络资源', null, null, 'zmdi zmdi-globe-alt', '0', null, '2018-01-12 15:28:48', '2018-01-22 19:49:26');
INSERT INTO `t_menu` VALUES ('59', '58', '天气查询', 'weather', 'weather:list', '', '0', null, '2018-01-12 15:40:02', '2018-04-25 09:02:57');
INSERT INTO `t_menu` VALUES ('61', '58', '每日一文', 'article', 'article:list', '', '0', null, '2018-01-15 17:17:14', '2018-04-25 09:03:08');
INSERT INTO `t_menu` VALUES ('64', '1', '字典管理', 'dict', 'dict:list', '', '0', null, '2018-01-18 10:38:25', '2018-04-25 09:01:50');
INSERT INTO `t_menu` VALUES ('65', '64', '新增字典', null, 'dict:add', null, '1', null, '2018-01-18 19:10:08', null);
INSERT INTO `t_menu` VALUES ('66', '64', '修改字典', null, 'dict:update', null, '1', null, '2018-01-18 19:10:27', null);
INSERT INTO `t_menu` VALUES ('67', '64', '删除字典', null, 'dict:delete', null, '1', null, '2018-01-18 19:10:47', null);
INSERT INTO `t_menu` VALUES ('81', '58', '影视资讯', null, null, null, '0', null, '2018-01-22 14:12:59', null);
INSERT INTO `t_menu` VALUES ('82', '81', '正在热映', 'movie/hot', 'movie:hot', '', '0', null, '2018-01-22 14:13:47', '2018-04-25 09:03:48');
INSERT INTO `t_menu` VALUES ('83', '81', '即将上映', 'movie/coming', 'movie:coming', '', '0', null, '2018-01-22 14:14:36', '2018-04-25 09:04:05');
INSERT INTO `t_menu` VALUES ('86', '58', 'One 一个', null, null, null, '0', null, '2018-01-26 09:42:41', '2018-01-26 09:43:46');
INSERT INTO `t_menu` VALUES ('87', '86', '绘画', 'one/painting', 'one:painting', '', '0', null, '2018-01-26 09:47:14', '2018-04-25 09:04:17');
INSERT INTO `t_menu` VALUES ('88', '86', '语文', 'one/yuwen', 'one:yuwen', '', '0', null, '2018-01-26 09:47:40', '2018-04-25 09:04:30');
INSERT INTO `t_menu` VALUES ('89', '86', '散文', 'one/essay', 'one:essay', '', '0', null, '2018-01-26 09:48:05', '2018-04-25 09:04:42');
INSERT INTO `t_menu` VALUES ('101', '0', '任务调度', null, null, 'zmdi zmdi-alarm', '0', null, '2018-02-24 15:52:57', null);
INSERT INTO `t_menu` VALUES ('102', '101', '定时任务', 'job', 'job:list', '', '0', null, '2018-02-24 15:53:53', '2018-04-25 09:05:12');
INSERT INTO `t_menu` VALUES ('103', '102', '新增任务', null, 'job:add', null, '1', null, '2018-02-24 15:55:10', null);
INSERT INTO `t_menu` VALUES ('104', '102', '修改任务', null, 'job:update', null, '1', null, '2018-02-24 15:55:53', null);
INSERT INTO `t_menu` VALUES ('105', '102', '删除任务', null, 'job:delete', null, '1', null, '2018-02-24 15:56:18', null);
INSERT INTO `t_menu` VALUES ('106', '102', '暂停任务', null, 'job:pause', null, '1', null, '2018-02-24 15:57:08', null);
INSERT INTO `t_menu` VALUES ('107', '102', '恢复任务', null, 'job:resume', null, '1', null, '2018-02-24 15:58:21', null);
INSERT INTO `t_menu` VALUES ('108', '102', '立即执行任务', null, 'job:run', null, '1', null, '2018-02-24 15:59:45', null);
INSERT INTO `t_menu` VALUES ('109', '101', '调度日志', 'jobLog', 'jobLog:list', '', '0', null, '2018-02-24 16:00:45', '2018-04-25 09:05:25');
INSERT INTO `t_menu` VALUES ('110', '109', '删除日志', null, 'jobLog:delete', null, '1', null, '2018-02-24 16:01:21', null);
INSERT INTO `t_menu` VALUES ('113', '2', 'Redis监控', 'redis/info', 'redis:list', '', '0', null, '2018-06-28 14:29:42', null);
INSERT INTO `t_menu` VALUES ('114', '2', 'Redis终端', 'redis/terminal', 'redis:terminal', '', '0', null, '2018-06-28 15:35:21', null);
INSERT INTO `t_menu` VALUES ('117', '2', '接口列表', 'swagger', 'swagger:skip', '', '0', null, '2018-09-10 17:32:24', null);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(100) NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', '管理员', '2017-12-27 16:23:11', '2018-09-10 17:43:12');
INSERT INTO `t_role` VALUES ('2', '测试账号', '测试账号', '2017-12-27 16:25:09', '2018-01-23 09:11:11');
INSERT INTO `t_role` VALUES ('3', '注册账户', '注册账户，只可查看，不可操作', '2017-12-29 16:00:15', '2018-02-24 17:33:45');
INSERT INTO `t_role` VALUES ('23', '用户管理员', '负责用户的增删改操作', '2018-01-09 15:32:41', null);
INSERT INTO `t_role` VALUES ('24', '系统监控员', '可查看系统监控信息，但不可操作', '2018-01-09 15:52:01', '2018-03-07 19:05:33');

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID',
  `MENU_ID` bigint(20) NOT NULL COMMENT '菜单/按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES ('3', '58');
INSERT INTO `t_role_menu` VALUES ('3', '59');
INSERT INTO `t_role_menu` VALUES ('3', '61');
INSERT INTO `t_role_menu` VALUES ('3', '81');
INSERT INTO `t_role_menu` VALUES ('3', '82');
INSERT INTO `t_role_menu` VALUES ('3', '83');
INSERT INTO `t_role_menu` VALUES ('3', '86');
INSERT INTO `t_role_menu` VALUES ('3', '87');
INSERT INTO `t_role_menu` VALUES ('3', '88');
INSERT INTO `t_role_menu` VALUES ('3', '89');
INSERT INTO `t_role_menu` VALUES ('3', '1');
INSERT INTO `t_role_menu` VALUES ('3', '3');
INSERT INTO `t_role_menu` VALUES ('3', '4');
INSERT INTO `t_role_menu` VALUES ('3', '5');
INSERT INTO `t_role_menu` VALUES ('3', '6');
INSERT INTO `t_role_menu` VALUES ('3', '64');
INSERT INTO `t_role_menu` VALUES ('3', '2');
INSERT INTO `t_role_menu` VALUES ('3', '8');
INSERT INTO `t_role_menu` VALUES ('3', '10');
INSERT INTO `t_role_menu` VALUES ('3', '101');
INSERT INTO `t_role_menu` VALUES ('3', '102');
INSERT INTO `t_role_menu` VALUES ('3', '109');
INSERT INTO `t_role_menu` VALUES ('24', '8');
INSERT INTO `t_role_menu` VALUES ('24', '2');
INSERT INTO `t_role_menu` VALUES ('24', '10');
INSERT INTO `t_role_menu` VALUES ('2', '81');
INSERT INTO `t_role_menu` VALUES ('2', '61');
INSERT INTO `t_role_menu` VALUES ('2', '24');
INSERT INTO `t_role_menu` VALUES ('2', '82');
INSERT INTO `t_role_menu` VALUES ('2', '83');
INSERT INTO `t_role_menu` VALUES ('2', '58');
INSERT INTO `t_role_menu` VALUES ('2', '59');
INSERT INTO `t_role_menu` VALUES ('2', '2');
INSERT INTO `t_role_menu` VALUES ('2', '8');
INSERT INTO `t_role_menu` VALUES ('2', '10');
INSERT INTO `t_role_menu` VALUES ('23', '11');
INSERT INTO `t_role_menu` VALUES ('23', '12');
INSERT INTO `t_role_menu` VALUES ('23', '13');
INSERT INTO `t_role_menu` VALUES ('23', '3');
INSERT INTO `t_role_menu` VALUES ('23', '1');
INSERT INTO `t_role_menu` VALUES ('1', '59');
INSERT INTO `t_role_menu` VALUES ('1', '3');
INSERT INTO `t_role_menu` VALUES ('1', '67');
INSERT INTO `t_role_menu` VALUES ('1', '1');
INSERT INTO `t_role_menu` VALUES ('1', '4');
INSERT INTO `t_role_menu` VALUES ('1', '5');
INSERT INTO `t_role_menu` VALUES ('1', '6');
INSERT INTO `t_role_menu` VALUES ('1', '20');
INSERT INTO `t_role_menu` VALUES ('1', '21');
INSERT INTO `t_role_menu` VALUES ('1', '22');
INSERT INTO `t_role_menu` VALUES ('1', '10');
INSERT INTO `t_role_menu` VALUES ('1', '8');
INSERT INTO `t_role_menu` VALUES ('1', '58');
INSERT INTO `t_role_menu` VALUES ('1', '66');
INSERT INTO `t_role_menu` VALUES ('1', '11');
INSERT INTO `t_role_menu` VALUES ('1', '12');
INSERT INTO `t_role_menu` VALUES ('1', '64');
INSERT INTO `t_role_menu` VALUES ('1', '13');
INSERT INTO `t_role_menu` VALUES ('1', '14');
INSERT INTO `t_role_menu` VALUES ('1', '65');
INSERT INTO `t_role_menu` VALUES ('1', '15');
INSERT INTO `t_role_menu` VALUES ('1', '16');
INSERT INTO `t_role_menu` VALUES ('1', '17');
INSERT INTO `t_role_menu` VALUES ('1', '18');
INSERT INTO `t_role_menu` VALUES ('1', '23');
INSERT INTO `t_role_menu` VALUES ('1', '81');
INSERT INTO `t_role_menu` VALUES ('1', '82');
INSERT INTO `t_role_menu` VALUES ('1', '83');
INSERT INTO `t_role_menu` VALUES ('1', '19');
INSERT INTO `t_role_menu` VALUES ('1', '24');
INSERT INTO `t_role_menu` VALUES ('1', '61');
INSERT INTO `t_role_menu` VALUES ('1', '86');
INSERT INTO `t_role_menu` VALUES ('1', '87');
INSERT INTO `t_role_menu` VALUES ('1', '88');
INSERT INTO `t_role_menu` VALUES ('1', '89');
INSERT INTO `t_role_menu` VALUES ('1', '101');
INSERT INTO `t_role_menu` VALUES ('1', '102');
INSERT INTO `t_role_menu` VALUES ('1', '103');
INSERT INTO `t_role_menu` VALUES ('1', '104');
INSERT INTO `t_role_menu` VALUES ('1', '105');
INSERT INTO `t_role_menu` VALUES ('1', '106');
INSERT INTO `t_role_menu` VALUES ('1', '107');
INSERT INTO `t_role_menu` VALUES ('1', '108');
INSERT INTO `t_role_menu` VALUES ('1', '109');
INSERT INTO `t_role_menu` VALUES ('1', '110');
INSERT INTO `t_role_menu` VALUES ('1', '113');
INSERT INTO `t_role_menu` VALUES ('1', '114');
INSERT INTO `t_role_menu` VALUES ('1', '2');
INSERT INTO `t_role_menu` VALUES ('1', '117');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `DEPT_ID` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) NOT NULL COMMENT '状态 0锁定 1有效',
  `CRATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) DEFAULT NULL COMMENT '性别 0男 1女',
  `THEME` varchar(10) DEFAULT NULL COMMENT '主题',
  `AVATAR` varchar(100) DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '描述',
  `SALT` varchar(255) DEFAULT NULL COMMENT '盐值',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('93', 'superAdmin', '89eeca855a460c4ce9d4caf8ee04984b', '1', '948445086@qq.com', '18764166237', '1', '2018-09-06 16:15:29', null, '2018-09-10 16:58:11', '2', 'blue-grey', 'default.jpg', null, 'af05e69008a24dd68a4b5b356a46d6a6');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('93', '1');
