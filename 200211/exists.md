* exists
```sql
select * from department where exists (select 1 from employee where employee.dno=department.dno);
```
* in
```sql
select * from department where dno in (select dno from employee);
```
* in ~ group by
```sql
select * from department where dno in (select dno from employee group by dno);
```
* 결과
```console
       DNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
```
