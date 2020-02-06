### 연습문제
* 1.다음 표에 명시된 대로 DEPT 테이블을 생성하시오.

  칼럼명 | 데이터 타입 | 크기
  ------|-------------|----
  DNO | number | 14
  DNAME | varchar2 | 14
  LOC | varchar2 | 13

  ```console
  SQL> desc dept
   Name                                      Null?    Type
   ----------------------------------------- -------- ----------------------------
   DNO                                                NUMBER(2)
   DNAME                                              VARCHAR2(14)
   LOC                                                VARCHAR2(13)
  ```

* 2.다음 표에 명시된 대로 EMP 테이블을 생성하시오.

  칼럼명 | 데이터 타입 | 크기
  ---|---|---
  ENO | number | 4
  ENAME | varchar2 | 10
  DNO | number | 2

  ```console
  SQL> desc emp
   Name                                      Null?    Type
   ----------------------------------------- -------- ----------------------------
   ENO                                                NUMBER(4)
   ENAME                                              VARCHAR2(10)
   DNO                                                VARCHAR2(2)
  ```

* 3.긴이름을 지정할 수 있도록 EMP 테이블을 수정하시오(ENAME 칼럼의 크기)

  칼럼명 | 데이터 타입 | 크기
  ---|---|---
  ENO | number | 4
  ENAME | varchar2 | 25
  DNO | number | 2

  ```console
  SQL> desc emp
   Name                                      Null?    Type
   ----------------------------------------- -------- ----------------------------
   ENO                                                NUMBER(4)
   ENAME                                              VARCHAR2(25)
   DNO                                                VARCHAR2(2)
  ```
  
  * 4.EMPLOYEE 테이블을 복사해서 EMPLOYEE2란 이름의 테이블을 생성하되 사원번호, 이름, 급여, 부서번호 칼럼만 복사하고 
  새로 생성된 테이블의 칼럼명은 각각 EMP_ID, NAME, SAL, DEPT_ID로 지정하시오.
  ```console
  SQL> desc employee2
   Name                                      Null?    Type
   ----------------------------------------- -------- ----------------------------
   EMP_ID                                             NUMBER(4)
   NAME                                               VARCHAR2(10)
   SAL                                                NUMBER(7,2)
   DEPT_ID                                            NUMBER(2)
  ```
  
  
