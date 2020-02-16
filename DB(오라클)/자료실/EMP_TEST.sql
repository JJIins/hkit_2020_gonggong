CREATE TABLE DEPT_TEST
        (DEPT_NO NUMBER(2) CONSTRAINT PK_TEST_DEPT PRIMARY KEY,
         DEPT_NAME VARCHAR2(14),
	 LOC   VARCHAR2(13) ) ;
CREATE TABLE EMP_TEST 
        (EMP_NO NUMBER(4) CONSTRAINT PK_TEST_EMP PRIMARY KEY,
	 EMP_NAME VARCHAR2(10),
 	 JOB   VARCHAR2(9),
	 MANAGER  NUMBER(4),
	 HIREDATE DATE,
	 SALARY NUMBER(7,2),
	 COMMISSION NUMBER(7,2),
	 DEPT_NO NUMBER(2) CONSTRAINT FK_TEST_DEPT_NO REFERENCES DEPT_TEST);

INSERT INTO DEPT_TEST VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT_TEST VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPT_TEST VALUES (30,'SALES','CHICAGO');
INSERT INTO DEPT_TEST VALUES (40,'OPERATIONS','BOSTON');

INSERT INTO EMP_TEST VALUES
(7369,'SMITH','CLERK',    7902,to_date('17-12-1980','dd-mm-yyyy'),800,NULL,20);
INSERT INTO EMP_TEST VALUES
(7499,'ALLEN','SALESMAN', 7698,to_date('20-2-1981', 'dd-mm-yyyy'),1600,300,30);
INSERT INTO EMP_TEST VALUES
(7521,'WARD','SALESMAN',  7698,to_date('22-2-1981', 'dd-mm-yyyy'),1250,500,30);
INSERT INTO EMP_TEST VALUES
(7566,'JONES','MANAGER',  7839,to_date('2-4-1981',  'dd-mm-yyyy'),2975,NULL,20);
INSERT INTO EMP_TEST VALUES
(7654,'MARTIN','SALESMAN',7698,to_date('28-9-1981', 'dd-mm-yyyy'),1250,1400,30);
INSERT INTO EMP_TEST VALUES
(7698,'BLAKE','MANAGER',  7839,to_date('1-5-1981',  'dd-mm-yyyy'),2850,NULL,30);
INSERT INTO EMP_TEST VALUES
(7782,'CLARK','MANAGER',  7839,to_date('9-6-1981',  'dd-mm-yyyy'),2450,NULL,10);
INSERT INTO EMP_TEST VALUES
(7788,'SCOTT','ANALYST',  7566,to_date('13-07-1987', 'dd-mm-yyyy'),3000,NULL,20);
INSERT INTO EMP_TEST VALUES
(7839,'KING','PRESIDENT', NULL,to_date('17-11-1981','dd-mm-yyyy'),5000,NULL,10);
INSERT INTO EMP_TEST VALUES
(7844,'TURNER','SALESMAN',7698,to_date('8-9-1981',  'dd-mm-yyyy'),1500,0,30);
INSERT INTO EMP_TEST VALUES
(7876,'ADAMS','CLERK',    7788,to_date('13-07-1987', 'dd-mm-yyyy'),1100,NULL,20);
INSERT INTO EMP_TEST VALUES
(7900,'JAMES','CLERK',    7698,to_date('3-12-1981', 'dd-mm-yyyy'),950,NULL,30);
INSERT INTO EMP_TEST VALUES
(7902,'FORD','ANALYST',   7566,to_date('3-12-1981', 'dd-mm-yyyy'),3000,NULL,20);
INSERT INTO EMP_TEST VALUES
(7934,'MILLER','CLERK',   7782,to_date('23-1-1982', 'dd-mm-yyyy'),1300,NULL,10);

COMMIT;

