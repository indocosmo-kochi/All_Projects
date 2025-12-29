/*
Navicat MySQL Data Transfer

Source Server         : localhost_3360
Source Server Version : 50645
Source Host           : localhost:3360
Source Database       : hrmis

Target Server Type    : MYSQL
Target Server Version : 50645
File Encoding         : 65001

Date: 2020-08-27 19:56:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for approver_tbl
-- ----------------------------
DROP TABLE IF EXISTS `approver_tbl`;
CREATE TABLE `approver_tbl` (
  `approver_tbl_id` int(11) NOT NULL AUTO_INCREMENT,
  `approver_level` int(11) NOT NULL,
  `approver_emp_id` int(11) NOT NULL,
  `is_mail` int(11) DEFAULT '0',
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `approver_isdeleted` int(11) DEFAULT '0',
  PRIMARY KEY (`approver_tbl_id`),
  KEY `approver_emp_id_idx` (`approver_emp_id`),
  KEY `employee_id_idx` (`employee_id`),
  CONSTRAINT `approver_emp_id` FOREIGN KEY (`approver_emp_id`) REFERENCES `employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of approver_tbl
-- ----------------------------
INSERT INTO `approver_tbl` VALUES ('1', '1', '2', '1', null, null, null, null, '4', '0');
INSERT INTO `approver_tbl` VALUES ('2', '1', '4', '1', null, null, null, null, '2', '0');
INSERT INTO `approver_tbl` VALUES ('3', '1', '18', '1', null, null, null, null, '19', '0');
INSERT INTO `approver_tbl` VALUES ('4', '1', '19', '1', null, null, null, null, '20', '0');
INSERT INTO `approver_tbl` VALUES ('5', '2', '18', '1', null, null, null, null, '20', '0');
INSERT INTO `approver_tbl` VALUES ('6', '1', '20', '1', null, null, null, null, '21', '0');
INSERT INTO `approver_tbl` VALUES ('7', '2', '19', '1', null, null, null, null, '21', '0');
INSERT INTO `approver_tbl` VALUES ('8', '3', '18', '1', null, null, null, null, '21', '0');

-- ----------------------------
-- Table structure for child
-- ----------------------------
DROP TABLE IF EXISTS `child`;
CREATE TABLE `child` (
  `child_id` int(11) NOT NULL AUTO_INCREMENT,
  `child_name` varchar(45) DEFAULT NULL,
  `child_age` int(11) DEFAULT NULL,
  `child_occupation` varchar(45) DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`child_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of child
-- ----------------------------
INSERT INTO `child` VALUES ('1', 'spousetest4 child1', '1', 'spousetest4 child1 occupation', 'ICS0220201', '0');

-- ----------------------------
-- Table structure for client_project_tbl
-- ----------------------------
DROP TABLE IF EXISTS `client_project_tbl`;
CREATE TABLE `client_project_tbl` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(45) NOT NULL,
  `client_id` int(11) NOT NULL,
  `is_deleted` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of client_project_tbl
-- ----------------------------
INSERT INTO `client_project_tbl` VALUES ('1', 'HRMIS', '2', '1');
INSERT INTO `client_project_tbl` VALUES ('2', 'hrmis', '2', '0');
INSERT INTO `client_project_tbl` VALUES ('3', 'hrmis ics 1', '2', '1');
INSERT INTO `client_project_tbl` VALUES ('4', 'chat application', '2', '0');
INSERT INTO `client_project_tbl` VALUES ('5', 'test', '2', '1');

-- ----------------------------
-- Table structure for client_tbl
-- ----------------------------
DROP TABLE IF EXISTS `client_tbl`;
CREATE TABLE `client_tbl` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(4500) NOT NULL,
  `client_location` varchar(4500) NOT NULL,
  `holiday_id` int(11) NOT NULL,
  `client_isdelete` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client_tbl
-- ----------------------------
INSERT INTO `client_tbl` VALUES ('1', 'Texsol Pvt Ltd', 'Tokyo, Japan', '5', '0');
INSERT INTO `client_tbl` VALUES ('2', 'Indocosmo Systems Pvt. Ltd', 'Kochi, Kadavanthra ', '1', '0');
INSERT INTO `client_tbl` VALUES ('3', 'xyz', 'xyz', '0', '1');
INSERT INTO `client_tbl` VALUES ('4', 'testdata', 'testdata', '2', '0');
INSERT INTO `client_tbl` VALUES ('5', 'xyzhhhh', 'xyz', '0', '1');
INSERT INTO `client_tbl` VALUES ('6', 'xyzfddfgd', 'xyz', '0', '1');
INSERT INTO `client_tbl` VALUES ('7', 'rgfdgfdggfghghhghgh', 'fgfhgfhfgfgffhfghfghgfhfg', '0', '1');

-- ----------------------------
-- Table structure for designation
-- ----------------------------
DROP TABLE IF EXISTS `designation`;
CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL AUTO_INCREMENT,
  `designation_name` varchar(45) NOT NULL,
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`designation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of designation
-- ----------------------------
INSERT INTO `designation` VALUES ('1', 'HR Manager', '0');
INSERT INTO `designation` VALUES ('2', 'HR Executive', '0');
INSERT INTO `designation` VALUES ('3', 'Project Leader', '0');
INSERT INTO `designation` VALUES ('4', 'Senior Developer', '0');
INSERT INTO `designation` VALUES ('5', 'Junior Developer', '0');
INSERT INTO `designation` VALUES ('6', 'System Administrator', '0');
INSERT INTO `designation` VALUES ('7', 'Marketing Manager', '1');
INSERT INTO `designation` VALUES ('8', 'Marketing Manager', '0');
INSERT INTO `designation` VALUES ('9', 'Jr. Software Engineer', '1');
INSERT INTO `designation` VALUES ('10', 'Jr. Software Engineer', '1');
INSERT INTO `designation` VALUES ('11', 'gfcfccfbg', '1');

-- ----------------------------
-- Table structure for education
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education` (
  `education_id` int(11) NOT NULL AUTO_INCREMENT,
  `qualification` varchar(45) DEFAULT NULL,
  `board_or_university` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `marks` double(5,2) DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`education_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of education
-- ----------------------------
INSERT INTO `education` VALUES ('1', 'SSLC', 'State', '2012-13', '100.00', 'ICS0220201', '0');
INSERT INTO `education` VALUES ('2', 'Plus Two', 'State', '2013-15', '91.50', 'ICS0220201', '0');
INSERT INTO `education` VALUES ('3', 'SSLC', 'ICSE', '2010-11', '90.00', 'ICS0220203', '0');
INSERT INTO `education` VALUES ('4', 'B.Tech', 'KTU', '2015-19', '64.15', 'ICS0220201', '0');
INSERT INTO `education` VALUES ('5', 'M.Tech', 'IITM', '2019-2021', '78.22', 'ICS0220201', '0');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_code` varchar(45) NOT NULL,
  `employee_name` varchar(45) NOT NULL,
  `location` int(11) NOT NULL,
  `designation` int(11) NOT NULL,
  `date_of_appointment` date DEFAULT NULL,
  `personal_phone` varchar(45) NOT NULL,
  `email_id_personal` varchar(45) NOT NULL,
  `email_id_official` varchar(45) DEFAULT NULL,
  `pf_uan` varchar(45) DEFAULT NULL,
  `esi_num` varchar(45) DEFAULT NULL,
  `password` varchar(4500) NOT NULL,
  `father_or_spouse_name` varchar(45) DEFAULT NULL,
  `employee_address` varchar(4500) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `blood_group` varchar(45) DEFAULT NULL,
  `status` varchar(450) DEFAULT NULL,
  `client` int(11) DEFAULT NULL,
  `admin_flag` int(11) DEFAULT '0',
  `aadhar_card` varchar(45) DEFAULT NULL,
  `pan_card` varchar(45) DEFAULT NULL,
  `passport` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `employee_code_UNIQUE` (`employee_code`),
  KEY `designation_id_idx` (`designation`),
  KEY `location_idx` (`location`),
  KEY `client_idx` (`client`),
  CONSTRAINT `client` FOREIGN KEY (`client`) REFERENCES `client_tbl` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `designation` FOREIGN KEY (`designation`) REFERENCES `designation` (`designation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `location` FOREIGN KEY (`location`) REFERENCES `location` (`location_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'ICS0220186', 'test1', '1', '6', '2018-01-01', '9994561321', 'test1@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'On Bench', '2', '1', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('2', 'ICS0220187', 'test2', '1', '1', '2019-01-01', '8989897878', 'test2@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'Working', '2', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('3', 'ICS0220188', 'test3', '1', '3', '2015-09-11', '7867543210', 'test3@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'Working', '1', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('4', 'ICS0220201', 'test4', '2', '5', '2019-08-27', '8989897899', 'test4@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', 'test4 father', 'test4 address', '1994-01-01', 'AB-', 'On Bench', '1', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('5', 'ICS0220202', 'test5', '2', '4', '2020-03-11', '7894561345', 'test5@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'Working', '1', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('6', 'ICS0220203', 'test6', '1', '5', '2020-03-11', '78945615677', 'test6@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'Working', '1', '1', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('7', 'ICS0220204', 'test7', '1', '5', '2020-03-11', '7894656320', 'test7@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'Working', '1', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('8', 'ICS0220205', 'test8', '1', '2', '2020-03-11', '7894566767', 'test8@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'Working', '1', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('9', 'ICS0220206', 'test9', '1', '5', '2020-03-11', '8989897877', 'test9@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'On Bench', '1', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('10', 'ICS0220207', 'test10', '1', '5', '2020-03-11', '7894561311', 'test10@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'Working', '1', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('11', 'ICS0220208', 'test11', '1', '5', '2020-03-11', '8982323878', 'test11@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'Working', '1', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('12', 'ICS0220209', 'test12', '2', '5', '1996-01-30', '8989895555', 'test12@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'On Bench', '1', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('13', 'ICS0220244', 'test22', '1', '1', '2020-05-15', '8989897878', 'test22@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'Working', '1', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('14', 'ICS0220299', 'test25', '1', '1', '2020-05-15', '8989897878', 'test25@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'On Bench', '1', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('16', 'ICS0220300', 'test20', '1', '5', '2020-01-01', '9874563298', 'test20@gmail.com', 'test20@gmail.com', '125478963256', '123698745632', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'On Bench', '2', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('17', 'ICS0220301', 'test23', '6', '4', '2020-06-12', '8989897878', 'test23@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'On Bench', '2', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('18', 'ICS2020001', 'Roshn', '1', '1', '2018-06-20', '8989897878', 'roshn@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'Working', '2', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('19', 'ICS2020002', 'Suraj', '1', '3', '2017-02-07', '7894561320', 'suraj@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'Working', '2', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('20', 'ICS2020003', 'Naveen', '1', '4', '2015-12-01', '7894656320', 'naveen@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'Working', '2', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('21', 'ICS2020004', 'Jeswin', '1', '5', '2019-09-16', '8982323878', 'jeswin@test.com', '', '', '', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'Working', '2', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('22', 'ICS2020005', 'Ayana Dharman', '1', '5', '2019-09-16', '9898656523', 'ayana.d@indocosmo.in', 'ayana.d@indocosmo.in', '123654789656', '123654789633', 'YXlhbmExMjM0', null, null, null, null, 'Working', '2', '0', null, null, null, null, '0');
INSERT INTO `employee` VALUES ('23', 'BFGB2343T', 'FGHNHFGNBH', '1', '5', '2020-08-06', '4354355354', 'fvdbgg@gmail.com', 'fgnfghnfg@gmail.com', '123654789656', '123654789633', 'SW5kb2Nvc21vMTIzLg==', null, null, null, null, 'Working', '2', '0', null, null, null, null, '1');

-- ----------------------------
-- Table structure for employee_project_tbl
-- ----------------------------
DROP TABLE IF EXISTS `employee_project_tbl`;
CREATE TABLE `employee_project_tbl` (
  `emp_project_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `project_status` varchar(45) NOT NULL,
  `technologies` varchar(45) NOT NULL,
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`emp_project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of employee_project_tbl
-- ----------------------------
INSERT INTO `employee_project_tbl` VALUES ('1', '2', '4', '6', '4', '2020-06-28', '2020-08-08', 'Not Completed', 'c++', '0');
INSERT INTO `employee_project_tbl` VALUES ('2', '2', '4', '2', '4', '2020-07-13', '2020-07-31', 'Completed', 'java', '0');
INSERT INTO `employee_project_tbl` VALUES ('3', '2', '4', '2', '4', '2020-07-13', '2020-07-31', 'Completed', 'java', '0');
INSERT INTO `employee_project_tbl` VALUES ('4', '2', '2', '3', '2', '2020-07-30', '2020-07-30', 'Completed', 'none', '0');
INSERT INTO `employee_project_tbl` VALUES ('5', '2', '4', '4', '4', '2020-07-06', '2020-07-07', 'Completed', 'poo', '0');
INSERT INTO `employee_project_tbl` VALUES ('6', '2', '4', '6', '4', '2020-07-07', '2020-08-08', 'Not Completed', 'php', '0');

-- ----------------------------
-- Table structure for holiday_date
-- ----------------------------
DROP TABLE IF EXISTS `holiday_date`;
CREATE TABLE `holiday_date` (
  `holiday_date_id` int(11) NOT NULL AUTO_INCREMENT,
  `holiday_date` date DEFAULT NULL,
  `holiday_id` int(11) DEFAULT NULL,
  `holiday_date_name` varchar(450) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`holiday_date_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of holiday_date
-- ----------------------------
INSERT INTO `holiday_date` VALUES ('1', '2020-12-25', '1', 'Xmas', '0');
INSERT INTO `holiday_date` VALUES ('2', '2020-01-26', '1', 'Republic Day', '0');
INSERT INTO `holiday_date` VALUES ('3', '2020-08-15', '1', 'Independance Day', '0');
INSERT INTO `holiday_date` VALUES ('4', '2019-12-25', '1', 'Christmas', '0');
INSERT INTO `holiday_date` VALUES ('5', '2020-10-02', '1', 'Gandhi Jayanti', '0');
INSERT INTO `holiday_date` VALUES ('6', '2019-01-26', '2', 'Republic Day', '0');
INSERT INTO `holiday_date` VALUES ('7', '2020-06-25', '1', 'xmas', '0');
INSERT INTO `holiday_date` VALUES ('8', '2020-06-26', '1', 'xmas', '0');
INSERT INTO `holiday_date` VALUES ('9', '2020-06-27', '1', 'xmas', '0');
INSERT INTO `holiday_date` VALUES ('10', '2020-06-01', '5', 'Texsol Special', '0');
INSERT INTO `holiday_date` VALUES ('11', '2020-06-09', '2', 'xmass', '0');
INSERT INTO `holiday_date` VALUES ('12', '2020-06-26', '2', 'xmas', '1');
INSERT INTO `holiday_date` VALUES ('13', '2020-06-27', '2', 'xmas', '1');
INSERT INTO `holiday_date` VALUES ('14', '2020-06-13', '3', 'Special', '0');
INSERT INTO `holiday_date` VALUES ('15', '2020-06-25', '3', 'xmas', '0');
INSERT INTO `holiday_date` VALUES ('16', '2020-06-26', '3', 'xmas', '0');
INSERT INTO `holiday_date` VALUES ('17', '2020-06-27', '3', 'xmas', '0');

-- ----------------------------
-- Table structure for holiday_tbl
-- ----------------------------
DROP TABLE IF EXISTS `holiday_tbl`;
CREATE TABLE `holiday_tbl` (
  `holiday_id` int(11) NOT NULL AUTO_INCREMENT,
  `holiday_name` varchar(450) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`holiday_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of holiday_tbl
-- ----------------------------
INSERT INTO `holiday_tbl` VALUES ('1', 'ICS Holiday1', '0');
INSERT INTO `holiday_tbl` VALUES ('2', 'ICS Holiday', '0');
INSERT INTO `holiday_tbl` VALUES ('3', 'ICS Holiday', '1');
INSERT INTO `holiday_tbl` VALUES ('4', 'ICS Holiday', '0');
INSERT INTO `holiday_tbl` VALUES ('5', 'Texsol Holiday', '0');
INSERT INTO `holiday_tbl` VALUES ('6', 'Mitsubuishi Holidays', '1');
INSERT INTO `holiday_tbl` VALUES ('7', 'ICS Holiday', '0');

-- ----------------------------
-- Table structure for hrmis_announcement_tbl
-- ----------------------------
DROP TABLE IF EXISTS `hrmis_announcement_tbl`;
CREATE TABLE `hrmis_announcement_tbl` (
  `announcement_tbl_id` int(11) NOT NULL AUTO_INCREMENT,
  `announcement_tbl_name` varchar(100) DEFAULT NULL,
  `announcement_tbl_description` varchar(200) DEFAULT NULL,
  `announcement_tbl_start_date` date DEFAULT NULL,
  `announcement_tbl_end_date` date DEFAULT NULL,
  `announcement_tbl_status` varchar(10) DEFAULT NULL,
  `isdeleted` int(2) DEFAULT '0',
  PRIMARY KEY (`announcement_tbl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrmis_announcement_tbl
-- ----------------------------
INSERT INTO `hrmis_announcement_tbl` VALUES ('1', 'Birthdays', 'Birthday of Employees born on March', '2020-03-01', '2020-03-31', 'Open', '0');
INSERT INTO `hrmis_announcement_tbl` VALUES ('2', 'Work Anniversary', 'Work Anniversary of the Employees for the Month of March', '2020-03-01', '2020-03-01', 'Open', '0');
INSERT INTO `hrmis_announcement_tbl` VALUES ('3', 'NewsLetter', 'Newsletter of the year 2020', '2020-03-01', '2020-03-31', 'Open', '0');
INSERT INTO `hrmis_announcement_tbl` VALUES ('4', 'dd', 'ddds', '2020-06-12', '2020-06-13', 'Open', '0');
INSERT INTO `hrmis_announcement_tbl` VALUES ('5', 'test', 'test', '2020-08-04', '2020-08-05', 'Open', '1');

-- ----------------------------
-- Table structure for hrmis_leave_application_tbl
-- ----------------------------
DROP TABLE IF EXISTS `hrmis_leave_application_tbl`;
CREATE TABLE `hrmis_leave_application_tbl` (
  `leave_app_tbl_id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_app_tbl_from_date` date DEFAULT NULL,
  `leave_app_tbl_to_date` date DEFAULT NULL,
  `leave_app_tbl_emp_id` int(11) DEFAULT NULL,
  `leave_app_tbl_approver_id` int(11) DEFAULT NULL,
  `leave_app_tbl_total_days` int(11) DEFAULT NULL,
  `leave_app_tbl_lop_days` int(11) DEFAULT NULL,
  `leave_application_tbl_appr_lvl` int(11) DEFAULT NULL,
  `leave_app_tbl_leave_type` int(11) DEFAULT NULL,
  `leave_app_tbl_reason` varchar(200) DEFAULT NULL,
  `leave_app_tbl_created_by` varchar(45) DEFAULT NULL,
  `leave_app_tbl_updated_by` varchar(45) DEFAULT NULL,
  `leave_status` int(11) DEFAULT '2',
  `leave_app_tbl_created_by_date` date DEFAULT NULL,
  `leave_app_tbl_updated_by_date` date DEFAULT NULL,
  `leave_application_lop_flag` int(11) DEFAULT NULL,
  `leave_app_tbl_isdeleted` int(1) DEFAULT '0',
  PRIMARY KEY (`leave_app_tbl_id`),
  KEY `leave_app_tbl_emp_id_idx` (`leave_app_tbl_emp_id`),
  KEY `leave_app_tbl_approver_id_idx` (`leave_app_tbl_approver_id`),
  KEY `leave_status_idx` (`leave_status`),
  CONSTRAINT `leave_status` FOREIGN KEY (`leave_status`) REFERENCES `leave_status` (`leave_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrmis_leave_application_tbl
-- ----------------------------
INSERT INTO `hrmis_leave_application_tbl` VALUES ('1', '2020-06-27', '2020-06-28', '21', '19', '1', '0', '2', '0', 'SICK', '21', '19', '4', '2020-06-26', '2020-06-26', '1', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('2', '2020-07-01', '2020-07-02', '21', '19', '1', '0', '2', '1', 'AS', '21', '19', '4', '2020-06-26', '2020-06-26', '0', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('3', '2020-07-10', '2020-07-11', '21', '20', '1', '0', '1', '0', 'ko', '21', '21', '5', '2020-06-26', '2020-06-26', '1', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('4', '2020-07-03', '2020-07-06', '21', '18', '3', '0', '3', '0', 'ki', '21', '18', '3', '2020-06-26', '2020-06-26', '1', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('5', '2020-06-27', '2020-06-28', '20', '18', '1', '0', '2', '0', 'asas', '20', '18', '3', '2020-06-26', '2020-06-29', '1', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('6', '2020-07-01', '2020-07-02', '21', '19', '1', '0', '2', '1', 'asasasasasa', '21', '19', '4', '2020-06-27', '2020-06-27', '0', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('7', '2020-07-01', '2020-07-02', '21', '20', '1', '0', '1', '0', 'dada', '21', '20', '4', '2020-06-29', '2020-06-29', '1', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('8', '2020-07-02', '2020-07-03', '21', '18', '1', '0', '3', '1', 'fuy', '21', '21', '5', '2020-06-30', '2020-07-01', '0', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('9', '2020-07-02', '2020-07-04', '21', '18', '2', '0', '3', '1', 'FLU', '21', '21', '5', '2020-07-01', '2020-07-01', '0', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('10', '2020-08-03', '2020-08-06', '21', '18', '3', '0', '3', '0', 'TRIP', '21', '21', '5', '2020-07-01', '2020-07-06', '1', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('11', '2020-07-02', '2020-07-03', '21', '18', '1', '0', '3', '1', 'Sick', '21', '18', '3', '2020-07-01', '2020-07-01', '0', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('12', '2020-07-03', '2020-07-04', '21', '18', '1', '0', '3', '1', 'Sick', '21', '18', '3', '2020-07-02', '2020-07-02', '0', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('13', '2020-07-07', '2020-07-08', '21', '20', '1', '0', '1', '1', 'Sick', '21', '20', '4', '2020-07-06', '2020-07-06', '0', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('14', '2020-07-10', '2020-07-11', '21', '18', '1', '0', '3', '1', 'Sick', '21', '19', '2', '2020-07-09', '2020-07-09', '0', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('15', '2020-07-10', '2020-07-12', '21', '20', '2', '0', '1', '1', 'Sickk', '21', null, '2', '2020-07-09', null, '0', '0');
INSERT INTO `hrmis_leave_application_tbl` VALUES ('16', '2020-07-14', '2020-07-15', '21', '20', '1', '0', '1', '1', 'Sick', '21', null, '2', '2020-07-13', null, '0', '0');

-- ----------------------------
-- Table structure for hrmis_leave_history_tbl
-- ----------------------------
DROP TABLE IF EXISTS `hrmis_leave_history_tbl`;
CREATE TABLE `hrmis_leave_history_tbl` (
  `leave_history_tbl_id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_history_tbl_app_id` int(11) DEFAULT NULL,
  `leave_history_tbl_from_date` date DEFAULT NULL,
  `leave_history_tbl_to_date` date DEFAULT NULL,
  `leave_history_tbl_totaldays` int(11) DEFAULT NULL,
  `leave_history_tbl_lop_days` int(11) DEFAULT NULL,
  `leave_history_tbl_reason` varchar(200) DEFAULT NULL,
  `leave_history_tbl_comment` varchar(200) DEFAULT NULL,
  `leave_history_tbl_status` int(11) DEFAULT NULL,
  `leave_history_tbl_type` int(11) DEFAULT NULL,
  `leave_history_tbl_approver_emp_id` int(11) DEFAULT NULL,
  `leave_history_tbl_emp_id` int(11) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `updatedDate` date DEFAULT NULL,
  `leave_history_lop_flag` int(11) DEFAULT NULL,
  `leave_history_tbl_isdeleted` int(1) DEFAULT '0',
  PRIMARY KEY (`leave_history_tbl_id`),
  KEY `leave_history_tbl_approver_emp_id_idx` (`leave_history_tbl_approver_emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrmis_leave_history_tbl
-- ----------------------------
INSERT INTO `hrmis_leave_history_tbl` VALUES ('1', '1', '2020-06-27', '2020-06-28', '1', '0', 'SICK', null, '1', '0', '20', '21', '21', null, '2020-06-26', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('2', '2', '2020-07-01', '2020-07-02', '1', '0', 'AS', null, '1', '1', '20', '21', '21', null, '2020-06-26', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('3', '1', '2020-06-27', '2020-06-28', '1', '0', 'SICK', '', '3', '0', '20', '21', '20', null, '2020-06-26', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('4', '2', '2020-07-01', '2020-07-02', '1', '0', 'AS', '', '3', '1', '20', '21', '20', null, '2020-06-26', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('5', '2', '2020-07-01', '2020-07-02', '1', '0', 'AS', '', '4', '1', '19', '21', '19', null, '2020-06-26', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('6', '1', '2020-06-27', '2020-06-28', '1', '0', 'SICK', '', '4', '0', '19', '21', '19', null, '2020-06-26', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('7', '3', '2020-07-10', '2020-07-11', '1', '0', 'ko', null, '1', '0', '20', '21', '21', null, '2020-06-26', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('8', '3', '2020-07-10', '2020-07-11', '1', '0', 'ko', null, '4', '0', '20', '21', '21', null, '2020-06-26', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('9', '4', '2020-07-03', '2020-07-06', '3', '0', 'ki', null, '1', '0', '20', '21', '21', null, '2020-06-26', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('10', '4', '2020-07-03', '2020-07-06', '3', '0', 'ki', '', '3', '0', '20', '21', '20', null, '2020-06-26', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('11', '4', '2020-07-03', '2020-07-06', '3', '0', 'ki', '', '3', '0', '19', '21', '19', null, '2020-06-26', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('12', '4', '2020-07-03', '2020-07-06', '3', '0', 'ki', '', '3', '0', '18', '21', '18', null, '2020-06-26', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('13', '5', '2020-06-27', '2020-06-28', '1', '0', 'asas', null, '1', '0', '19', '20', '20', null, '2020-06-26', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('14', '6', '2020-07-01', '2020-07-02', '1', '0', 'asasasasasa', null, '1', '1', '20', '21', '21', null, '2020-06-27', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('15', '6', '2020-07-01', '2020-07-02', '1', '0', 'asasasasasa', 'ok', '3', '1', '20', '21', '20', null, '2020-06-27', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('16', '6', '2020-07-01', '2020-07-02', '1', '0', 'asasasasasa', 'no', '4', '1', '19', '21', '19', null, '2020-06-27', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('17', '7', '2020-07-01', '2020-07-02', '1', '0', 'dada', null, '1', '0', '20', '21', '21', null, '2020-06-29', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('18', '7', '2020-07-01', '2020-07-02', '1', '0', 'dada', '', '4', '0', '20', '21', '20', null, '2020-06-29', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('19', '5', '2020-06-27', '2020-06-28', '1', '0', 'asas', 'dsadsadsadsa', '3', '0', '19', '20', '19', null, '2020-06-29', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('20', '5', '2020-06-27', '2020-06-28', '1', '0', 'asas', 'szadg', '3', '0', '18', '20', '18', null, '2020-06-29', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('21', '8', '2020-07-02', '2020-07-03', '1', '0', 'fuy', null, '1', '1', '20', '21', '21', null, '2020-06-30', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('22', '9', '2020-07-02', '2020-07-04', '2', '0', 'FLU', null, '1', '1', '20', '21', '21', null, '2020-07-01', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('23', '10', '2020-08-03', '2020-08-06', '3', '0', 'TRIP', null, '1', '0', '20', '21', '21', null, '2020-07-01', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('24', '9', '2020-07-02', '2020-07-04', '2', '0', 'FLU', 'OK', '3', '1', '20', '21', '20', null, '2020-07-01', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('25', '10', '2020-08-03', '2020-08-06', '3', '0', 'TRIP', 'OK', '3', '0', '20', '21', '20', null, '2020-07-01', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('26', '11', '2020-07-02', '2020-07-03', '1', '0', 'Sick', null, '1', '1', '20', '21', '21', null, '2020-07-01', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('27', '8', '2020-07-02', '2020-07-03', '1', '0', 'fuy', 'Approved', '3', '1', '20', '21', '20', null, '2020-07-01', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('28', '11', '2020-07-02', '2020-07-03', '1', '0', 'Sick', 'Approved', '3', '1', '20', '21', '20', null, '2020-07-01', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('29', '8', '2020-07-02', '2020-07-03', '1', '0', 'fuy', 'Approved', '3', '1', '19', '21', '19', null, '2020-07-01', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('30', '9', '2020-07-02', '2020-07-04', '2', '0', 'FLU', 'Approved', '3', '1', '19', '21', '19', null, '2020-07-01', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('31', '11', '2020-07-02', '2020-07-03', '1', '0', 'Sick', 'Approved', '3', '1', '19', '21', '19', null, '2020-07-01', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('32', '10', '2020-08-03', '2020-08-06', '3', '0', 'TRIP', 'Approved', '3', '0', '19', '21', '19', null, '2020-07-01', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('33', '8', '2020-07-02', '2020-07-03', '1', '0', 'fuy', 'Approved', '3', '1', '18', '21', '18', null, '2020-07-01', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('34', '9', '2020-07-02', '2020-07-04', '2', '0', 'FLU', 'Approved', '3', '1', '18', '21', '18', null, '2020-07-01', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('35', '11', '2020-07-02', '2020-07-03', '1', '0', 'Sick', 'Approved', '3', '1', '18', '21', '18', null, '2020-07-01', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('36', '10', '2020-08-03', '2020-08-06', '3', '0', 'TRIP', 'Approved', '3', '0', '18', '21', '18', null, '2020-07-01', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('37', '8', '2020-07-02', '2020-07-03', '1', '0', 'fuy', null, '4', '1', '18', '21', '21', null, '2020-07-01', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('38', '9', '2020-07-02', '2020-07-04', '2', '0', 'FLU', null, '4', '1', '18', '21', '21', null, '2020-07-01', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('39', '12', '2020-07-03', '2020-07-04', '1', '0', 'Sick', null, '1', '1', '20', '21', '21', null, '2020-07-02', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('40', '12', '2020-07-03', '2020-07-04', '1', '0', 'Sick', 'Approved', '3', '1', '20', '21', '20', null, '2020-07-02', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('41', '12', '2020-07-03', '2020-07-04', '1', '0', 'Sick', 'Approved', '3', '1', '19', '21', '19', null, '2020-07-02', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('42', '12', '2020-07-03', '2020-07-04', '1', '0', 'Sick', 'Approved', '3', '1', '18', '21', '18', null, '2020-07-02', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('43', '10', '2020-08-03', '2020-08-06', '3', '0', 'TRIP', null, '4', '0', '18', '21', '21', null, '2020-07-06', null, '1', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('44', '13', '2020-07-07', '2020-07-08', '1', '0', 'Sick', null, '1', '1', '20', '21', '21', null, '2020-07-06', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('45', '13', '2020-07-07', '2020-07-08', '1', '0', 'Sick', 'Cancel', '4', '1', '20', '21', '20', null, '2020-07-06', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('46', '14', '2020-07-10', '2020-07-11', '1', '0', 'Sick', null, '1', '1', '20', '21', '21', null, '2020-07-09', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('47', '15', '2020-07-10', '2020-07-12', '2', '0', 'Sickk', null, '1', '1', '20', '21', '21', null, '2020-07-09', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('48', '14', '2020-07-10', '2020-07-11', '1', '0', 'Sick', 'Approved', '3', '1', '20', '21', '20', null, '2020-07-09', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('49', '14', '2020-07-10', '2020-07-11', '1', '0', 'Sick', 'Approved', '3', '1', '19', '21', '19', null, '2020-07-09', null, '0', '0');
INSERT INTO `hrmis_leave_history_tbl` VALUES ('50', '16', '2020-07-14', '2020-07-15', '1', '0', 'Sick', null, '1', '1', '20', '21', '21', null, '2020-07-13', null, '0', '0');

-- ----------------------------
-- Table structure for leaveallocation_tbl
-- ----------------------------
DROP TABLE IF EXISTS `leaveallocation_tbl`;
CREATE TABLE `leaveallocation_tbl` (
  `leaveallocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(45) NOT NULL,
  `leavetype_name` varchar(45) NOT NULL,
  `location_name` varchar(45) NOT NULL,
  `current_year` varchar(45) NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `leave_status` varchar(45) NOT NULL,
  `leaveallocation_emp_id` int(11) DEFAULT NULL,
  `leaveallocation_type_id` int(11) DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`leaveallocation_id`),
  UNIQUE KEY `unique_index` (`leaveallocation_emp_id`,`current_year`,`leaveallocation_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of leaveallocation_tbl
-- ----------------------------
INSERT INTO `leaveallocation_tbl` VALUES ('1', 'test1', 'Casual Leave', 'Kochi', '2020', '24', ' Allocate ', '1', '1', '0');
INSERT INTO `leaveallocation_tbl` VALUES ('2', 'Suraj', 'Casual Leave', 'Kochi', '2020', '24', ' Allocate ', '19', '1', '0');
INSERT INTO `leaveallocation_tbl` VALUES ('3', 'Naveen', 'Casual Leave', 'Kochi', '2020', '24', ' Allocate ', '20', '1', '0');
INSERT INTO `leaveallocation_tbl` VALUES ('4', 'Jeswin', 'Casual Leave', 'Kochi', '2020', '26', ' Allocate ', '21', '1', '0');
INSERT INTO `leaveallocation_tbl` VALUES ('5', 'test2', 'Casual Leave', 'Kochi', '2020', '24', ' Allocate ', '2', '1', '0');
INSERT INTO `leaveallocation_tbl` VALUES ('6', 'test3', 'Sick Leave ', 'Kochi', '2020', '1', ' Allocate ', '3', '1', '1');
INSERT INTO `leaveallocation_tbl` VALUES ('7', 'test22', 'Casual Leave', 'Kochi', '2021', '24', ' Allocate ', '13', '1', '1');
INSERT INTO `leaveallocation_tbl` VALUES ('8', 'test1', 'Casual Leave', 'Kochi', '2021', '24', ' Allocate ', '1', '1', '0');
INSERT INTO `leaveallocation_tbl` VALUES ('9', 'test11', 'Casual Leave', 'Kochi', '2021', '24', ' Allocate ', '11', '1', '0');
INSERT INTO `leaveallocation_tbl` VALUES ('10', 'test12', 'Casual Leave', 'Kochi', '2021', '24', ' Allocate ', '12', '1', '1');

-- ----------------------------
-- Table structure for leavetype_tbl
-- ----------------------------
DROP TABLE IF EXISTS `leavetype_tbl`;
CREATE TABLE `leavetype_tbl` (
  `leavetype_id` int(11) NOT NULL AUTO_INCREMENT,
  `leavetype_name` varchar(45) NOT NULL,
  `leavetype_location` varchar(45) NOT NULL,
  `schedular_type` varchar(45) NOT NULL,
  `carry_forward_status` varchar(45) NOT NULL,
  `leaves_per_year` varchar(45) NOT NULL,
  `leavetype_isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`leavetype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of leavetype_tbl
-- ----------------------------
INSERT INTO `leavetype_tbl` VALUES ('1', 'Casual Leave', 'Kochi', 'Yearly', 'null', '24', '0');
INSERT INTO `leavetype_tbl` VALUES ('2', 'LOP', 'Kochi', 'No Schedular', 'null', '2', '1');
INSERT INTO `leavetype_tbl` VALUES ('3', 'Sick Leave ', 'Kochi', 'Monthly', 'null', '1', '0');
INSERT INTO `leavetype_tbl` VALUES ('4', 'test', 'Japan', 'No Schedular', 'null', '2', '1');
INSERT INTO `leavetype_tbl` VALUES ('5', 'test', 'Kochi', 'Monthly', 'Yes', '1', '1');

-- ----------------------------
-- Table structure for leave_status
-- ----------------------------
DROP TABLE IF EXISTS `leave_status`;
CREATE TABLE `leave_status` (
  `leave_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_status_name` varchar(45) DEFAULT NULL,
  `is_deleted` varchar(45) DEFAULT '0',
  PRIMARY KEY (`leave_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave_status
-- ----------------------------
INSERT INTO `leave_status` VALUES ('1', 'Applied', '0');
INSERT INTO `leave_status` VALUES ('2', 'Pending', '0');
INSERT INTO `leave_status` VALUES ('3', 'Approved', '0');
INSERT INTO `leave_status` VALUES ('4', 'Rejected', '0');
INSERT INTO `leave_status` VALUES ('5', 'Cancelled', '0');

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(45) NOT NULL,
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES ('1', 'Kochi', '0');
INSERT INTO `location` VALUES ('2', 'Japan', '0');
INSERT INTO `location` VALUES ('3', 'Bangalore', '0');
INSERT INTO `location` VALUES ('4', 'Dubai', '0');
INSERT INTO `location` VALUES ('5', 'Dubai', '1');
INSERT INTO `location` VALUES ('6', 'Kuwait', '0');
INSERT INTO `location` VALUES ('7', 'xsdsd', '1');
INSERT INTO `location` VALUES ('8', 'aaaaaa', '1');
INSERT INTO `location` VALUES ('9', 'asdf', '1');

-- ----------------------------
-- Table structure for personal
-- ----------------------------
DROP TABLE IF EXISTS `personal`;
CREATE TABLE `personal` (
  `personal_id` int(11) NOT NULL AUTO_INCREMENT,
  `father_name` varchar(45) DEFAULT NULL,
  `father_age` int(11) DEFAULT NULL,
  `father_occupation` varchar(45) DEFAULT NULL,
  `mother_name` varchar(45) DEFAULT NULL,
  `mother_age` int(11) DEFAULT NULL,
  `mother_occupation` varchar(45) DEFAULT NULL,
  `spouse_name` varchar(45) DEFAULT NULL,
  `spouse_age` int(11) DEFAULT NULL,
  `spouse_occupation` varchar(45) DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`personal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personal
-- ----------------------------
INSERT INTO `personal` VALUES ('1', 'test4 father', '66', 'test4 father occupation', 'test4 mother', '55', 'test4 mother occupation', 'test4 spouse', '27', 'test4 spouse occupation', 'ICS0220201', '0');

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession` (
  `profession_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(4500) DEFAULT NULL,
  `period` varchar(4500) DEFAULT NULL,
  `nature_of_work` varchar(4500) DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`profession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES ('1', 'JP Morgan', '2015/12/12 - 2017/12/22', 'Jr. Developer', 'ICS0220201', '0');
INSERT INTO `profession` VALUES ('2', 'HCL', '2018/01/05 - 2019/05/06', 'Sr. Developer', 'ICS0220201', '0');

-- ----------------------------
-- Table structure for project_manager_tbl
-- ----------------------------
DROP TABLE IF EXISTS `project_manager_tbl`;
CREATE TABLE `project_manager_tbl` (
  `manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_name` varchar(45) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of project_manager_tbl
-- ----------------------------
INSERT INTO `project_manager_tbl` VALUES ('1', 'Suraj', '2', '1');
INSERT INTO `project_manager_tbl` VALUES ('2', 'Suraj Prabhakaran ', '2', '0');
INSERT INTO `project_manager_tbl` VALUES ('3', 'test fvfdv', '2', '1');
INSERT INTO `project_manager_tbl` VALUES ('4', 'Suraj Prabhakaran', '4', '0');

-- ----------------------------
-- Table structure for sibling
-- ----------------------------
DROP TABLE IF EXISTS `sibling`;
CREATE TABLE `sibling` (
  `sibling_id` int(11) NOT NULL AUTO_INCREMENT,
  `sibling_name` varchar(45) DEFAULT NULL,
  `sibling_age` int(11) DEFAULT NULL,
  `sibling_occupation` varchar(45) DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`sibling_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sibling
-- ----------------------------
INSERT INTO `sibling` VALUES ('1', 'test4 sibling1', '33', 'test4 sibling1 occupation', 'ICS0220201', '0');
INSERT INTO `sibling` VALUES ('2', 'test4 sibling2', '18', 'test4 sibling2 occupation', 'ICS0220201', '0');

-- ----------------------------
-- Table structure for work_report_tbl
-- ----------------------------
DROP TABLE IF EXISTS `work_report_tbl`;
CREATE TABLE `work_report_tbl` (
  `work_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(45) NOT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `uploaded_month` varchar(45) NOT NULL,
  `location` int(11) NOT NULL,
  `upload_status` varchar(45) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`work_report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of work_report_tbl
-- ----------------------------
INSERT INTO `work_report_tbl` VALUES ('1', '21', 'Jeswin', 'test.xlsx', '08-2020', '1', 'Applied', '0');

-- ----------------------------
-- Procedure structure for getApproverById
-- ----------------------------
DROP PROCEDURE IF EXISTS `getApproverById`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApproverById`(
IN approverTblId INT
)
BEGIN
SELECT approver_tbl_id, approver_level,approver_emp_id,
employee.employee_name,is_mail,created_by,updated_by,created_date,
updated_date,approver_tbl.employee_id,approver_isdeleted
From approver_tbl INNER JOIN employee ON employee.employee_id=approver_emp_id
WHERE approver_tbl_id=approverTblId AND approver_isdeleted=0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for getApproverinAnyLevel
-- ----------------------------
DROP PROCEDURE IF EXISTS `getApproverinAnyLevel`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApproverinAnyLevel`(
IN employeeId INT,
IN approverLevel INT
)
BEGIN
SELECT CASE WHEN EXISTS 
(SELECT 1 FROM approver_tbl WHERE employee_id=employeeId AND approver_level=approverLevel) 
THEN 
(SELECT approver_emp_id FROM approver_tbl WHERE employee_id=employeeId AND approver_level=approverLevel) 
ELSE 0 END AS approver_emp_id FROM DUAL;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for getApproverLevel
-- ----------------------------
DROP PROCEDURE IF EXISTS `getApproverLevel`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApproverLevel`(
IN employeeId INT
)
BEGIN
SELECT CASE WHEN EXISTS
(SELECT 1 FROM approver_tbl WHERE employee_id=employeeId)
THEN MAX(approver_level) ELSE 0 END FROM approver_tbl WHERE employee_id=employeeId;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for getApprovers
-- ----------------------------
DROP PROCEDURE IF EXISTS `getApprovers`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApprovers`(
IN employeeId INT
)
BEGIN
SELECT approver_tbl_id, approver_level,approver_emp_id,
employee.employee_name,is_mail,created_by,updated_by,created_date,
updated_date,approver_tbl.employee_id,approver_isdeleted
From approver_tbl INNER JOIN employee ON employee.employee_id=approver_emp_id 
WHERE approver_tbl.employee_id=employeeId AND approver_isdeleted=0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for getHolidayDate
-- ----------------------------
DROP PROCEDURE IF EXISTS `getHolidayDate`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getHolidayDate`(
IN employeeId INT
)
BEGIN
SELECT holiday_date FROM holiday_date INNER JOIN holiday_tbl
ON holiday_tbl.holiday_id = holiday_date.holiday_id INNER JOIN client_tbl
ON holiday_tbl.holiday_id = client_tbl.holiday_id INNER JOIN employee
ON client_tbl.client_id = employee.client WHERE employee_id=employeeId;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for getprojecthistory
-- ----------------------------
DROP PROCEDURE IF EXISTS `getprojecthistory`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getprojecthistory`()
BEGIN
SELECT emp_project_id,employee.employee_name,client_project_tbl.project_name,location.location_name,
project_manager_tbl.manager_name,start_date,end_date,project_status,technologies 
FROM employee_project_tbl,client_project_tbl,location,project_manager_tbl,employee 
WHERE employee_project_tbl.project_id = client_project_tbl.project_id 
AND employee_project_tbl.employee_id = employee.employee_id
AND employee_project_tbl.location_id = location.location_id 
AND employee_project_tbl.manager_id = project_manager_tbl.manager_id
AND employee_project_tbl.is_deleted=0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for getProjects
-- ----------------------------
DROP PROCEDURE IF EXISTS `getProjects`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProjects`(
IN employeeId INT
)
BEGIN
SELECT emp_project_id,client_project_tbl.project_name,location.location_name,
project_manager_tbl.manager_name,start_date,end_date,project_status,technologies 
FROM employee_project_tbl,client_project_tbl,location,project_manager_tbl 
WHERE employee_project_tbl.project_id = client_project_tbl.project_id 
AND employee_project_tbl.location_id = location.location_id 
AND employee_project_tbl.manager_id = project_manager_tbl.manager_id
AND employee_project_tbl.employee_id = employeeId 
AND employee_project_tbl.is_deleted=0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for get_monthwise
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_monthwise`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_monthwise`(
IN employeeId INT,
IN startDate DATE,
IN endDate DATE
)
BEGIN
DECLARE count INT;
Drop temporary Table IF  EXISTS dates_val;
CREATE TEMPORARY TABLE
           IF NOT EXISTS
           dates_val (
           date_col VARCHAR(255),
           emp_id INT,
           leavetype_id INT,
           lop_flag INT);
select getDatesbetween(date_format(leave_app_tbl_from_date,'%Y-%m-%d'),
date_format(leave_app_tbl_to_date,'%Y-%m-%d'),leave_app_tbl_emp_id,
leave_app_tbl_leave_type,leave_application_lop_flag)
 INTO count FROM hrmis_leave_application_tbl 
where month(leave_app_tbl_from_date)<>month(leave_app_tbl_to_date) and 
leave_app_tbl_emp_id=employeeId
AND leave_app_tbl_from_date BETWEEN startDate AND endDate;

select month_name, sum(no_of_days) as total_days,employee_name,
case when leave_application_lop_flag=1 then 'LOP' else leavetype_name end as leave_type from 
((select monthname(date_col) as month_name, 1 as no_of_days,
emp_id as leave_app_tbl_emp_id,leavetype_id as leave_app_tbl_leave_type,
lop_flag as leave_application_lop_flag from dates_val)
union all 
(select monthname(leave_app_tbl_from_date) as month_name, 
 leave_app_tbl_total_days,leave_app_tbl_emp_id,leave_app_tbl_leave_type,
 leave_application_lop_flag 
 from hrmis_leave_application_tbl 
where month(leave_app_tbl_from_date)=month(leave_app_tbl_to_date) and 
leave_app_tbl_emp_id=employeeId
AND leave_app_tbl_from_date BETWEEN startDate AND endDate))
 temp inner join employee on leave_app_tbl_emp_id=employee_id 
 left join leavetype_tbl on leave_app_tbl_leave_type=leavetype_id
 group by month_name,employee_name,leavetype_name
;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for loginRedirect
-- ----------------------------
DROP PROCEDURE IF EXISTS `loginRedirect`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `loginRedirect`(
IN employeeId INT
)
BEGIN
SELECT employee.employee_id,employee.employee_code,employee.admin_flag,
designation.designation_name
,(CASE WHEN EXISTS (SELECT 1 FROM approver_tbl WHERE approver_tbl.approver_emp_id = employeeId 
AND approver_tbl.approver_isdeleted=0) THEN '1' ELSE '0'
 END) AS isApprover 
FROM employee INNER JOIN designation ON employee.designation = designation.designation_id 
WHERE employee.employee_id = employeeId;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for totalAppliedLeaves
-- ----------------------------
DROP PROCEDURE IF EXISTS `totalAppliedLeaves`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `totalAppliedLeaves`(
IN employeeId INT,
IN leaveType INT
)
BEGIN
SELECT CASE WHEN EXISTS
(SELECT 1 FROM hrmis_leave_application_tbl 
WHERE leave_app_tbl_emp_id = employeeId AND leave_application_lop_flag = 0 
AND leave_status<>4 AND leave_status<>5 AND leave_app_tbl_leave_type = leaveType)
THEN SUM(leave_app_tbl_total_days) ELSE 0 END as total 
FROM hrmis_leave_application_tbl WHERE leave_app_tbl_emp_id = employeeId 
AND leave_application_lop_flag = 0 AND leave_status<>4 AND leave_status<>5 
AND leave_app_tbl_leave_type = leaveType;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for getDatesbetween
-- ----------------------------
DROP FUNCTION IF EXISTS `getDatesbetween`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getDatesbetween`(
from_date varchar(10), to_date varchar(10), emp_id INT, leavetype_id INT, lop_flag INT
) RETURNS int(11)
BEGIN
DECLARE count INT DEFAULT 0;
         CREATE TEMPORARY TABLE
           IF NOT EXISTS
           dates_val (date_col VARCHAR(255),
           emp_id INT,
           leavetype_id INT,
           lop_flag INT);
          
         INSERT INTO dates_val (date_col)
         select *,emp_id,leavetype_id,lop_flag from 
(select adddate('2020-01-01',t4.i*10000 + t3.i*1000 + t2.i*100 + t1.i*10 + t0.i) selected_date from
 (select 0 i union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union select 7 union select 8 union select 9) t0,
 (select 0 i union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union select 7 union select 8 union select 9) t1,
 (select 0 i union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union select 7 union select 8 union select 9) t2,
 (select 0 i union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union select 7 union select 8 union select 9) t3,
 (select 0 i union select 1 union select 2 union select 3 union select 4 union select 5 union select 6 union select 7 union select 8 union select 9) t4) v
where selected_date between from_date and to_date;
         SELECT COUNT(date_col) INTO count
           FROM dates_val;
         RETURN count;
END
;;
DELIMITER ;
