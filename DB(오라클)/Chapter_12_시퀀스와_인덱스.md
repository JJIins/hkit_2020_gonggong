## Chapter 12_시퀀스와 인덱스

### 내용정리
* 트리 자료 구조
  - https://www.youtube.com/watch?v=h7TlYy-jU-o
* index rebuild를 둘러싼 논쟁
  - https://ukja.tistory.com/80?category=12613
* index rebuild 대상
  - https://m.blog.naver.com/js_family/220450543808

### 연습문제

* 1.사원 테이블의 사원번호가 자동으로 생성되도록 시퀀스를 생성하시오.
```sql
select sequence_name, min_value, max_value, 
increment_by, cycle_flag
from user_sequences
where sequence_name like '%EMP%';
```
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

