/*
MySQL Data Transfer
Source Host: localhost
Source Database: seatplan
Target Host: localhost
Target Database: seatplan
Date: 11/23/2016 1:50:23 AM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `Name` varchar(100) NOT NULL,
  `ID_Dept` int(100) NOT NULL auto_increment,
  `dept_code` varchar(20) NOT NULL,
  PRIMARY KEY  (`ID_Dept`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for exam_info
-- ----------------------------
DROP TABLE IF EXISTS `exam_info`;
CREATE TABLE `exam_info` (
  `Name` varchar(100) NOT NULL,
  `exam_code` varchar(100) NOT NULL,
  `ID_Exam` int(100) NOT NULL auto_increment,
  PRIMARY KEY  (`ID_Exam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for registration
-- ----------------------------
DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `User_Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Confirm_Password` varchar(100) default NULL,
  `reg_code` int(100) NOT NULL auto_increment,
  PRIMARY KEY  (`reg_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for room_info
-- ----------------------------
DROP TABLE IF EXISTS `room_info`;
CREATE TABLE `room_info` (
  `Room_No` int(10) NOT NULL,
  `Bench` int(10) NOT NULL,
  `Row_no` int(10) NOT NULL,
  `Column_no` int(10) NOT NULL,
  PRIMARY KEY  (`Room_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for semester
-- ----------------------------
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `Name` varchar(100) NOT NULL,
  `ID_Semi` int(100) NOT NULL auto_increment,
  `Year` int(100) NOT NULL,
  PRIMARY KEY  (`ID_Semi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info` (
  `code_std` int(100) NOT NULL auto_increment,
  `Name` varchar(100) NOT NULL,
  `ID_Std` int(100) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Year` int(100) NOT NULL,
  PRIMARY KEY  (`code_std`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `code_Teach` int(100) NOT NULL auto_increment,
  `Name` varchar(100) NOT NULL,
  `ID_Teach` int(100) NOT NULL,
  `Department` varchar(50) NOT NULL,
  PRIMARY KEY  (`code_Teach`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `department` VALUES ('Business Administration', '183', 'BBA');
INSERT INTO `department` VALUES ('Business Administration', '186', 'BBA_Dept');
INSERT INTO `department` VALUES ('CSE', '187', 'CSE');
INSERT INTO `department` VALUES ('ssdd', '188', 'aa');
INSERT INTO `department` VALUES ('CSE', '189', 'CSE-90');
INSERT INTO `exam_info` VALUES ('computer', '111', '1');
INSERT INTO `exam_info` VALUES ('Database', 'CSE-333', '2');
INSERT INTO `exam_info` VALUES ('Mid term', '14', '3');
INSERT INTO `registration` VALUES ('u', 'u', 'u', null, '1');
INSERT INTO `registration` VALUES ('urmi', 'urmi', 'urmi', null, '2');
INSERT INTO `semester` VALUES ('Fall', '99', '2010');
INSERT INTO `semester` VALUES ('Summer', '100', '2017');
INSERT INTO `semester` VALUES ('Spring', '101', '2010');
INSERT INTO `semester` VALUES ('Spring', '102', '2015');
INSERT INTO `semester` VALUES ('Spring', '103', '2017');
INSERT INTO `student_info` VALUES ('1', 'sss', '111', 'EEE', '2020');
INSERT INTO `student_info` VALUES ('2', 'rima', '1212', 'CSE', '2010');
INSERT INTO `student_info` VALUES ('3', 'Tamanna', '131400015', 'CSE', '2016');
INSERT INTO `student_info` VALUES ('4', 'Shanzida', '141400011', 'CSE', '2016');
INSERT INTO `student_info` VALUES ('5', 'moon', '1919', 'EEE', '2019');
INSERT INTO `teacher` VALUES ('1', 'TTTTTTTT', '12365', 'EEE');
INSERT INTO `teacher` VALUES ('2', 'SS', '1826', 'BBA');
