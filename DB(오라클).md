## Chapter 11_뷰

### 연습문제

* 1.20번 부서에 소속된 사원의 사원번호와 이름과 부서번호를 출력하는 SELECT문을 하나의 뷰(v_em_dno)
로 정의하시오.
```console
SQL> select * from v_em_dno;

       ENO ENAME                       DNO
---------- -------------------- ----------
      7369 SMITH                        20
      7566 JONES                        20
      7788 SCOTT                        20
      7876 ADAMS                        20
      7902 FORD                         20
```

* 2.이미 생성된 뷰(v_em_dno)에 대해서 급여 역시 출력할 수 있도록 수정하시오.
```console
SQL> select * from v_em_dno;

       ENO ENAME                       DNO     SALARY
---------- -------------------- ---------- ----------
      7369 SMITH                        20        800
      7566 JONES                        20       2975
      7788 SCOTT                        20       3000
      7876 ADAMS                        20       1100
      7902 FORD                         20       3000
```

* 3.생성된 뷰(v_em_dno)를 제거하시오.

## Chapter 12_시퀀스와 인덱스

* 1.사원 테이블의 사원번호가 자동으로 생성되도록 시퀀스를 생성하시오.
```console
SEQUENCE_NAME                                                 MIN_VALUE  MAX_VALUE INCREMENT_BY CY
------------------------------------------------------------ ---------- ---------- ------------ --
EMPLOYEES_SEQ                                                         1 1.0000E+28            1 N
EMP_SEQ                                                               1     100000            1 N
```

* 2.사원번호를 시퀀스로부터 발급받으시오.
```console
SQL> select * from emp01;

     EMPNO ENAME                HIREDATE
---------- -------------------- --------
         1 julia                20/02/11
```

* 3.EMP01 테이블의 이름 칼럼을 인덱스로 설정하되 인덱스 이름을 IDX_EMP01_ENAME로 지정하시오.
```console
INDEX_NAME                               TABLE_NAME                               COLUMN_NAME
---------------------------------------- ---------------------------------------- -------------
SYS_C007033                              EMP01                                    EMPNO
IDX_EMP01_ENAME                          EMP01                                    ENAME
```
