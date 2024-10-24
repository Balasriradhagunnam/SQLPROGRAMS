-- PLSQL
DECLARE
	NUM NUMBER:= 5;
	FACT NUMBER :=1;
BEGIN
	FOR I IN 1..NUM LOOP
		FACT := FACT *I;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('FACTORIAL IS ' || FACT);
END;
-- FACTORIAL IS 120
CREATE TABLE DEPT(DEPTNO INT,DNAME VARCHAR(12),LOCATION VARCHAR(10));
CREATE TABLE EMP(EMPNO INT,ENAME VARCHAR(20),JOB VARCHAR(10),HIREDATE VARCHAR(20),SALARY INT,DEPTNO INT);
INSERT INTO DEPT VALUES(1,'CSE','NSP');
INSERT INTO DEPT VALUES(2,'ECE','PLK');
INSERT INTO DEPT VALUES(3,'EEE','BHMR');
INSERT INTO EMP VALUES(10,'JOHN','HR','2024-10-11',10000,1);
INSERT INTO EMP VALUES(11,'JACK','ASSI','2023-11-02',20000,2);
INSERT INTO EMP VALUES(12,'JAMES','PROF','2022-10-13',40000,3);
ALTER TABLE DEPT 
ADD CONSTRAINT PK_DEPTNO
PRIMARY KEY(DEPTNO);
ALTER TABLE EMP
ADD CONSTRAINT PK_EMPNO
PRIMARY KEY(EMPNO);
ALTER TABLE EMP
ADD CONSTRAINT FK_DEPTNO
FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO);
SELECT DEPTNO ,MAX(SALARY) AS HIGH FROM EMP
GROUP BY DEPTNO;
