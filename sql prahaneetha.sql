CREATE DATABASE STUDENT;
USE STUDENT;
CREATE TABLE USER1(ID INTEGER,NAME TEXT);
INSERT INTO USER1(ID,NAME) VALUES (1,'AKASH'),(2,'BANTHI'),(3,'CHANTI'),(4,'DOORTHI'),(5,'EESHA');

CREATE TABLE CODEKATAS(ID INT,PROBLEM INT);
INSERT INTO CODEKATAS(ID,PROBLEM) VALUES(1,10),(2,80),(3,61),(4,0),(5,90);

SELECT USER1.NAME,CODEKATAS.PROBLEM FROM USER1 JOIN CODEKATAS  WHERE CODEKATAS.ID=USER1.ID;

CREATE TABLE ATTENDANCEE(ID INT,ATTD INT);
INSERT INTO ATTENDANCEE(ID,ATTD) VALUES(1,90),(2,81),(3,70),(4,47),(5,72);

CREATE TABLE COMPANYDRIVE(ID INT,DRIVES INT);
INSERT INTO COMPANYDRIVE(ID,DRIVES) VALUES(1,10),(2,20),(3,0),(4,14),(5,7);
SELECT * FROM COMPANYDRIVE;

SELECT USER1.NAME,COMPANYDRIVE.DRIVES FROM USER1 JOIN COMPANYDRIVE ON COMPANYDRIVE.ID=USER1.ID WHERE COMPANYDRIVE.ID=5;

CREATE TABLE COURSE1(MCOURSE TEXT,C_ID INT);
INSERT INTO COURSE1(MCOURSE ,C_ID) VALUES('PRGM',11),('NETWORK',12),('ELECT',13),('TECH',4),('DATA',15);

CREATE TABLE STUDENT_ACT_CRS(ID INT,A_CRC1 TEXT,A_CRC2 TEXT);
INSERT INTO STUDENT_ACT_CRS(ID,A_CRC1,A_CRC2) VALUES(1,'PRGM','NETWORK'),(2,'ELECT','DATA'),(3,'TECH','PRGM'),(4,'NETWORK','DATA'),(5,'ELECT','DATA');

SELECT ID,A_CRC1,A_CRC2,MCOURSE FROM STUDENT_ACT_CRS JOIN COURSE1 ON STUDENT_ACT_CRS.ID=COURSE1.C_ID;
CREATE TABLE MENTOR1(COURSE TEXT,MENTOR TEXT);
INSERT INTO MENTOR1(ID,MENTOR) VALUES ('PRGM','SRK'),('NETWORK','SNR'),('ELECT','VIJAY'),('TECH','SHIRISHA'),('DATA','PREETHI');
SELECT MENTOR FROM MENTOR1;

CREATE TABLE TASK(ID INT,WORK TEXT);
INSERT INTO TASK(ID,WORK) VALUES(1,'JAVAPRGMS'),(2,'SQL_QUERIES'),(3,'C++'),(4,'NETWORKING'),(5,'TECHNOLOGIES');

CREATE TABLE TOPICS(C_ID INT , TASK_ASSIGNED TEXT);
INSERT INTO TOPICS(C_ID,TASK_ASSIGNED) VALUES(1,'MENTORING'),(2,'PROGRAMMING'),(3,'QUERIES'),(4,'TECHNICAL_MANAGEMENT'),(5,'NETWORKING');
