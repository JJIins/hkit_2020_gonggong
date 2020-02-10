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

* 05.사원번호가 7788인 사원의 부서번호를 10번 수정하시오.
```console
SQL> select * from emp_copy where eno=7788;

       ENO ENAME                JOB                   MANAGER HIREDATE     SALARY COMMISSION        DNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
      7788 SCOTT                ANALYST                  7566 87/07/13       3000                    10
```

* 06.사원번호 7788의 담당 업무 및 급여를 사원번호 7499의 담당 업무 및 급여와 일치하도록 갱신하시오.
```console
SQL> select * from emp_copy where eno in(7788, 7499);

       ENO ENAME                JOB                   MANAGER HIREDATE     SALARY COMMISSION        DNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
      7499 ALLEN                SALESMAN                 7698 81/02/20       1600        300         30
      7788 SCOTT                SALESMAN                 7566 87/07/13       1600                    10
```

* 07.사원번호 7369와 업무가 동일한 모든 사원의 부서번호를 사원 7369의 현재 부서번호로 갱신하시오.
```console
SQL> select * from emp_copy
  2    where dno = (select dno from emp_copy where eno=7369)
  3    and job = (select job from emp_copy where eno=7369);

       ENO ENAME                JOB                   MANAGER HIREDATE     SALARY COMMISSION        DNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
      7369 SMITH                CLERK                    7902 80/12/17        800                    20
      7876 ADAMS                CLERK                    7788 87/07/13       1100                    20
      7900 JAMES                CLERK                    7698 81/12/03        950                    20
      7934 MILLER               CLERK                    7782 82/01/23       1300                    20
```

* 08.department 테이블의 구조와 내용을 복사하여 DEPT_COPY란 이름의 테이블을 만드시오.
```console
SQL> select * from dept_copy;

       DNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON
```

* 09.DEPT_COPY 테이블에서 부서명이 RESEARCH인 부서를 제거하시오.
```console
SQL> select * from dept_copy;

       DNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON
```

* 10.DEPT_COPY 테이블에서 부서 번호가 10이거나 40인 부서를 제거하시오.
```console
SQL> select * from dept_copy;

       DNO DNAME                        LOC
---------- ---------------------------- --------------------------
        30 SALES                        CHICAGO
```

