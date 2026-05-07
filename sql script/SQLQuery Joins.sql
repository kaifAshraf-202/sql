--Primary Key ↔ Foreign Key relationship
-- left join + alias + tablename requried 
-- left join defination all rows from left table  + matching rows from right table vice versa for right join
-- inner join all matching rows from both table 
-- full outer join all rows fo both table
-- cross join every combines with each row 3 * 3 = 9 rows
-- join table itself


select e.ename,
	   e.empno,
	   d.dname,
	   d.dlocation,
	   e.deptno
from employee as e left join dept as d on e.deptno = d.deptno
select * from employee;
alter table employee add mrg int;
insert into employee (mrg) values(1842);