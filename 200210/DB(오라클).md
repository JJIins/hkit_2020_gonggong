## Chapter 09_데이터 조작과 트랜잭션

* 01.EMP 테이블의 구조만 복사하여 EMP_INSERT란 이름의 빈 테이블을 만드시오.
```console
SQL> desc emp_insert
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENO                                                NUMBER(4)
 ENAME                                              VARCHAR2(10)
 JOB                                                VARCHAR2(9)
 MANAGER                                            NUMBER(4)
 HIREDATE                                           DATE
 SALARY                                             NUMBER(7,2)
 COMMISSION                                         NUMBER(7,2)
 DNO                                                NUMBER(2)
```

* 02.본인을 EMP_INSERT 테이블에 추가하되 SYSDATE를 이용해서 입사일을 오늘로 입력하시오.
```console
SQL> select * from emp_insert;

       ENO ENAME                JOB                   MANAGER HIREDATE     SALARY COMMISSION        DNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
         1 LEEJM                STUDENT                       20/02/09       2700        230         10
```

* 03.EMP_INSERT 테이블에 옆 사람을 추가하되 TO_DATE 함수를 이용해서 입사일을 어제로 입력하시오.
```console
SQL> select * from emp_insert;

       ENO ENAME                JOB                   MANAGER HIREDATE     SALARY COMMISSION        DNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
         1 LEEJM                STUDENT                       20/02/09       2700        230         10
         2 LEEJH                SOLDIER                       20/02/08       1150                    20
```

* 04.employee 테이블의 구조와 내용을 복사하여 EMP_COPY란 이름의 테이블을 만드시오.
```console
SQL> desc emp_copy
 Name
                                                               Null?    Type
 --------------------------------------------------------------------------------------------------------
 ENO
                                                                        NUMBER(4)
 ENAME
                                                                        VARCHAR2(10)
 JOB
                                                                        VARCHAR2(9)
 MANAGER
                                                                        NUMBER(4)
 HIREDATE
                                                                        DATE
 SALARY
                                                                        NUMBER(7,2)
 COMMISSION
                                                                        NUMBER(7,2)
 DNO
                                                                        NUMBER(2)
```
