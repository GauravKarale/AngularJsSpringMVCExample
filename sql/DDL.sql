DROP TABLE GK_DEPT;
CREATE TABLE GK_DEPT(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	DEPT_ID VARCHAR(10),
	DEPT_NAME VARCHAR(60),
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_EMPLOYEE;
CREATE TABLE GK_EMPLOYEE(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	EMP_ID VARCHAR(16),
	FIRST_NAME VARCHAR(20),
	MIDDLE_NAME VARCHAR(20),
	LAST_NAME VARCHAR(20),
	EMAIL_ID VARCHAR(20),
	DISP_NAME VARCHAR(20),
	DESIGNATION VARCHAR(20),
	HIRE_DATE DATE,
	REHIRE_DATE DATE,
	TERM_DATE DATE,
	STATUS CHAR(1),
	DATE_OF_BIRTH DATE,
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_EMP_CONTACT_INFO;
CREATE TABLE GK_EMP_CONTACT_INFO(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	EMP_ID VARCHAR(16),
	ADDR1 VARCHAR(30),
	ADDR2 VARCHAR(30),
	ADDR3 VARCHAR(20),
	CITY VARCHAR(20),
	STATE VARCHAR(20),
	COUNTRY VARCHAR(20),
	MOBILE_NO VARCHAR(12),
	ALTERNATE_NO VARCHAR(16),
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_EMP_BIOMETRIC;
CREATE TABLE GK_EMP_BIOMETRIC(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	EMP_ID VARCHAR(16),
	GENDER CHAR(1),
	BLOOD_GRP VARCHAR(6),
	IDEN_MARK VARCHAR(20),
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_PROFILES;
CREATE TABLE GK_PROFILES(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	PROFILE_ID VARCHAR(10),
	PROFILE_DESC VARCHAR(30),
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_CODE_VALUE;
CREATE TABLE GK_CODE_VALUE(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	CODE_GROUP VARCHAR(20),
	CODE_ID VARCHAR(20),
	CODE_VALUE VARCHAR(50),
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_USERS;
CREATE TABLE GK_USERS
(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	EMP_ID   VARCHAR(16),
	USERNAME	VARCHAR(50),
	PASSWORD 	VARCHAR(50),
	PROFILE_ID VARCHAR(10),
	ACCOUNT_CREATION_DATE DATETIME,
	LAST_LOGIN 	DATETIME,
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME 	DATETIME,
	PRIMARY KEY(OWNER_ID,CLIENT_ID,EMP_ID)
);

DROP TABLE GK_FORMUPLOAD_INFO;
CREATE TABLE GK_FORMUPLOAD_INFO
(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	FORM_ID INT,
	FORM_NAME VARCHAR(50),
	FORM_CATEGORY VARCHAR(20),
	FORM_EXTENSION VARCHAR(50),
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME DATETIME,
	PRIMARY KEY(FORM_ID)
);

DROP TABLE GK_HOLIDAY_INFO;
CREATE TABLE GK_HOLIDAY_INFO(
OWNER_ID NUMERIC(4),
CLIENT_ID VARCHAR(6),
HOLIDAY_ID INT,
HOLIDAY_DATE DATE,
HOLIDAY_MONTH VARCHAR(10),
HOLIDAY_YEAR VARCHAR(6),
HOLIDAY_DESC VARCHAR(20),
LAST_USER VARCHAR(10),
LAST_UPDATE_TIME DATETIME,
PRIMARY KEY(HOLIDAY_ID)
);

DROP TABLE GK_EMP_EMRGNC_CONTACT_INFO;
CREATE TABLE GK_EMP_EMRGNC_CONTACT_INFO(
OWNER_ID NUMERIC(4),
CLIENT_ID VARCHAR(6),
EMP_ID INT,
CONTACT_NAME VARCHAR(15),
HOME_PHONE_NO VARCHAR(12),
CELL_PHONE_NO VARCHAR(12),
ALTERNATE_PHONE_NO VARCHAR(12),
LAST_USER VARCHAR(10),
LAST_UPDATE_TIME DATETIME,
PRIMARY KEY(EMP_ID)
);

DROP TABLE GK_EMP_OFF_DET;
CREATE TABLE GK_EMP_OFF_DET(
OWNER_ID NUMERIC(4),
CLIENT_ID VARCHAR(6),
EMP_ID  VARCHAR(16),
BASE_SAL VARCHAR(10),
ALLOWANCES VARCHAR(30),
PAN_NO VARCHAR(15),
ACNT_NO VARCHAR(15),
BANK_NAME VARCHAR(20),
LAST_USER VARCHAR(10),
LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_EMP_ACADEMICS;
CREATE TABLE GK_EMP_ACADEMICS(
OWNER_ID NUMERIC(4),
CLIENT_ID VARCHAR(6),
EMP_ID  VARCHAR(16),
ACADEMIC_TYPE VARCHAR(20),
ACADEMIC_DESC VARCHAR(50),
LAST_USER VARCHAR(10),
LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_VISION_MISSION;
CREATE TABLE GK_VISION_MISSION(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	VISION VARCHAR(1000),
	MISSION VARCHAR(1000),
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_LOG_DEPARTMENT;
CREATE TABLE GK_LOG_DEPARTMENT(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	LOG_DEPT_ID VARCHAR(10),
	LOG_DEPT_NAME VARCHAR(30),
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_EMP_LOG_DEPT;
CREATE TABLE GK_EMP_LOG_DEPT(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	EMP_ID VARCHAR(16),
	LOG_DEPT_ID VARCHAR(10),
	EFF_DATE DATETIME,
	END_DATE DATETIME,
	STATUS CHAR(1),
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_EMP_LEAVE_INFO;
CREATE TABLE GK_EMP_LEAVE_INFO(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	EMP_ID VARCHAR(16),
	LEAVE_CODE VARCHAR(50),
	EFF_DATE DATE,
	END_DATE DATE,
	STATUS CHAR(1),
	APPROVER_ID VARCHAR(16),
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_EMP_LEAVE_BAL;
CREATE TABLE GK_EMP_LEAVE_BAL(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	EMP_ID VARCHAR(16),
	LEAVE_BAL NUMERIC(4,2),
	ON_DATE DATETIME,
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME DATETIME
);
ALTER TABLE GK_EMP_LEAVE_BAL ADD COLUMN ACTUAL_LEAVE_BAL NUMERIC(4,2);

ALTER TABLE GK_EMP_LEAVE_INFO ADD COLUMN LEAVE_ID VARCHAR(16);
ALTER TABLE GK_EMP_LEAVE_INFO ADD COLUMN LEAVE_BAL NUMERIC(4,2);

DROP TABLE GK_COMPN_NEWS;
CREATE TABLE GK_COMPN_NEWS(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	N_ID VARCHAR(6),
	NEWS_DESC VARCHAR(100),
	EXPIRY_DATE DATE,
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME DATETIME
);
DROP TABLE  GK_EMP_OF_MONTH;
CREATE TABLE GK_EMP_OF_MONTH
(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	EMP_ID VARCHAR(16),
	LOG_DEPT_ID VARCHAR(10),
	MONTH VARCHAR(2),
	YEAR INT(4),
	LAST_USER VARCHAR(10),
	LAST_UPDATE_TIME DATETIME
);


ALTER TABLE GK_CODE_VALUE DROP COLUMN SEQ_NO; 
ALTER TABLE GK_CODE_VALUE ADD SEQ_NO INT NULL DEFAULT NULL;
ALTER TABLE GK_EMPLOYEE MODIFY EMAIL_ID VARCHAR(30);


ALTER TABLE GK_CODE_VALUE MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_COMPN_NEWS MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_DEPT  MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_EMP_ACADEMICS MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_EMP_BIOMETRIC MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_EMP_CONTACT_INFO MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_EMP_EMRGNC_CONTACT_INFO MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_EMP_LEAVE_BAL MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_EMP_LEAVE_INFO MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_EMP_LOG_DEPT MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_EMP_OFF_DET MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_EMPLOYEE MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_FORMUPLOAD_INFO MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_HOLIDAY_INFO MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_LOG_DEPARTMENT MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_PROFILES  MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_USERS MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_VISION_MISSION MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;
ALTER TABLE GK_EMP_OF_MONTH MODIFY COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;

DROP TABLE GK_FILE_SHARING;
CREATE TABLE GK_FILE_SHARING(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	TRANSC_ID VARCHAR(16),
	FILE_ID VARCHAR(16),
	USER_ID VARCHAR(16),
	LAST_USER VARCHAR(40),
	LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_FILE_INFO;
CREATE TABLE GK_FILE_INFO(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	FILE_ID VARCHAR(16),
	FILE_NAME VARCHAR(16),
	EMP_ID VARCHAR(16),
	FILE_STATUS VARCHAR(1),
	LAST_USER VARCHAR(40),
	LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_SUGGESTIONS;
CREATE TABLE GK_SUGGESTIONS(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	S_ID VARCHAR(16),
	S_DESC VARCHAR(100),
	LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_QUOTES;
CREATE TABLE GK_QUOTES(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	QUOTE VARCHAR(75),
	LAST_UPDATE_TIME DATETIME
);

ALTER TABLE GK_FILE_INFO MODIFY COLUMN FILE_NAME VARCHAR(50) NULL DEFAULT NULL; 
ALTER TABLE  GK_EMP_OF_MONTH ADD COLUMN EOM_ID VARCHAR(16) NULL DEFAULT NULL;
ALTER TABLE GK_QUOTES MODIFY COLUMN QUOTE VARCHAR(500) NULL DEFAULT NULL;

DROP TABLE GK_REFER_FRIEND;
CREATE TABLE GK_REFER_FRIEND(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	REFERENCE_ID VARCHAR(6),
	FRIEND_INFO VARCHAR(50),
	RESUME_NAME VARCHAR(50),
	REFERED_BY VARCHAR(10),
	LAST_UPDATE_TIME DATETIME
);

DROP TABLE GK_IMAGE_UPLOAD;
CREATE TABLE GK_IMAGE_UPLOAD(
	OWNER_ID NUMERIC(4),
	CLIENT_ID VARCHAR(6),
	IMAGE_ID VARCHAR(6),
	IMAGE_TITLE VARCHAR(30),
	IMAGE_FILE_NAME VARCHAR(30),
	LAST_USER VARCHAR(40),
	LAST_UPDATE_TIME DATETIME
);


DROP TABLE GK_PRODUCT_FEATURES;
CREATE TABLE GK_PRODUCT_FEATURES ( 
    OWNER_ID        	INT(4) NOT NULL,
    CLIENT_ID       	VARCHAR(10) NOT NULL,
    MODULE_ID       	VARCHAR(20) NOT NULL,
    FEATURE_GROUP_ID	VARCHAR(10) NOT NULL,
    FEATURE_ID      	VARCHAR(20) NOT NULL,
    FEATURE_VALUE   	VARCHAR(20) NULL,
    LAST_UPDATED        DATETIME NOT NULL,
    PRIMARY KEY PRODUCT_FEATURE_PK(OWNER_ID,CLIENT_ID,MODULE_ID,FEATURE_GROUP_ID,FEATURE_ID)
);

ALTER TABLE GK_EMP_LEAVE_INFO ADD COLUMN REASON VARCHAR(150) NULL DEFAULT NULL;

ALTER TABLE GK_EMP_LEAVE_INFO ADD COLUMN APPLIED_DATE DATETIME NULL DEFAULT NULL;

ALTER TABLE GK_SUGGESTIONS ADD COLUMN LAST_USER VARCHAR(40) NULL DEFAULT NULL;