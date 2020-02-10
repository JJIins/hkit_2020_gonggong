* exists
```sql
select * from department where exists (select 1 from employee where employee.dno=department.dno);
```
```console
```
