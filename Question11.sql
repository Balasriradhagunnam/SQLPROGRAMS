CREATE TABLE STUDENT (SID INT,SNAME VARCHAR(20),PERC INT,GENDER VARCHAR(20),BRANCH VARCHAR(20));
INSERT INTO STUDENT VALUES (10, 'RAMU', 90,'M','CSE');
INSERT INTO STUDENT VALUES (11, 'RAJU', 80,'M','IT');
INSERT INTO STUDENT VALUES (12, 'RAMA', 60,'F','EEE');
CREATE VIEW BRANCH_VIEW AS
SELECT BRANCH FROM STUDENT;
INSERT INTO STUDENT VALUES (13, 'SUMA', 70,'F','ECE');
DELETE FROM STUDENT WHERE SID=10;
UPDATE STUDENT
SET PERC=85
WHERE SID=11;
DROP VIEW BRANCH_VIEW;
