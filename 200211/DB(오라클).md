## Chapter 10_무결성과 제약 조건

* 01.employee 테이블의 구조를 복사하여 EMP_SAMPLE란 이름의 테이블을 만드시오. 사원 테이블의 사원번호
칼럼에 테이블 레벨로 primary key 제약 조건을 지정하되 제약 조건 이름은 my_emp_pk로 지정하시오.
```console
SQL> select table_name, constraint_name
  2  from user_constraints
  3  where table_name in('EMP_SAMPLE');

TABLE_NAME                                                   CONSTRAINT_NAME
------------------------------------------------------------ ------------------------------
EMP_SAMPLE                                                   MY_EMP_PK
```

* 02.부서 테이블의 부서번호 칼럼에 테이블 레벨로 primary key 제약 조건을 지정하되 제약 조건 이름은 
my_dept_pk로 지정하시오.
```console
SQL> select table_name, constraint_name
  2  from user_constraints
  3  where table_name in('DEPT_SAMPLE');

TABLE_NAME                                                   CONSTRAINT_NAME
------------------------------------------------------------ ------------------------------------------
DEPT_SAMPLE                                                  MY_DEPT_PK
```

* 03.사원 테이블의 부서번호 칼럼에 존재하지 않는 부서의 사원이 배정되지 않도록 외래 키 제약 조건을 지정하되
제약 조건 이름은 my_emp_dept_fk로 지정하시오.
```console
SQL> select table_name, constraint_name
  2  from user_constraints
  3  where table_name in('EMP_SAMPLE');

TABLE_NAME                                                   CONSTRAINT_NAME
------------------------------------------------------------ ------------------------------------------
EMP_SAMPLE                                                   MY_EMP_PK
EMP_SAMPLE                                                   MY_EMP_DEPT_FK
```

* 04.사원 테이블의 커미션 칼럼에 0보다 큰 값만을 입력할 수 있도록 제약 조건을 지정하시오.
```console
SQL> select table_name, constraint_name
  2  from user_constraints
  3  where table_name in('EMP_SAMPLE');

TABLE_NAME                                                   CONSTRAINT_NAME
------------------------------------------------------------ ------------------------------------------
EMP_SAMPLE                                                   MY_EMP_PK
EMP_SAMPLE                                                   MY_EMP_DEPT_FK
EMP_SAMPLE                                                   EMP_COMMISSION__MIN
```
