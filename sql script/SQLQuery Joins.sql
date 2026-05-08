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




alter table employee add mrg int;
insert into employee (mrg) values(1843);
insert into employee (mrg) values(1844);
insert into employee (mrg) values(1845);
insert into employee (mrg) values(1844);
insert into employee (mrg) values(1849);
insert into employee (mrg) values(1850);

delete employee where ename IS NULL;


update employee set mrg=1843 where deptno=842;
update employee set mrg=1844 where deptno=842;
update employee set mrg=1849 where deptno=843;
update employee set mrg=1842 where deptno=844;
update employee set mrg=1850 where deptno=845;
update employee set mrg=1845 where deptno=846;
update employee set mrg=1823 where deptno=847;
update employee set mrg=1833 where deptno=848;
update employee set mrg=1853 where deptno=849;
update employee set mrg=1853 where deptno=850;
select * from employee;

-- self join
select e1.ename as employee , e2.ename as manager from employee e1 inner join employee e2 on e1.empno=e2.mrg;
select 
e1.ename as employee , 
e2.ename as manager 
from employee e1 
left join employee e2 on e1.empno=e2.mrg;











