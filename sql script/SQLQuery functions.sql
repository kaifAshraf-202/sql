-- functions are resuable sql bock there 2 types buildin and user defined function.
-- buidt in function
-- 1. string function / aggregate function / date function/ MATHEMATICAL/ conversion function


--built in functions

-- string function
select len('akdfdszfgb');
select upper('kaifashraf');
select lower('KAIF ASHRAF KHAN');
SELECT (getdate());
select cast (10.5 as int);

-- user defined function
--1. scaler and tabled value function 
create function Addnumber
(
@n1 int,
@n2 int)
returns int
as 
begin 
	declare @sum int
	set @sum = @n1+@n2;
	return @sum;
end


select dbo.Addnumber(10,20);


-- tabled valued function
create function myfunctable(@deptno int)
returns table
as 
return(
select * from employee
where deptno <=@deptno
)

select * from  myfunctable(8400);