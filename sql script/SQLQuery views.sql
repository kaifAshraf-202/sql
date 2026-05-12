--- views use to reduce the repetative quary and it a virtual table 
--- do not store data 
---1. What is a View?
-- 2. Does View store data?
-- 3. Difference between Table and View
-- 4. Why use Views?
-- 5. Can Views contain joins?
--- 6. Why avoid SELECT * in Views?
-- 7. How to delete View?
-- 8. Can we update View?

--- to show all tables
select name from sys.tables;
-- to tables
select name from sys.views;

CREATE VIEW myview as 
select e.ename,
       e.empno,
       d.dlocation
    from
    employee e 
    join 
    dept d
    on e.deptno = d.deptno;

select * from myview;