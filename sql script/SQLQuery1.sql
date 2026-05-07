create table customer
(
	cnum int,
	cname varchar(10),
	crating varchar(10)

);
insert into customer (cnum,cname,crating)values(01,'kaif',100);

insert into customer (cnum,cname,crating)values(02,'amar',300);

insert into customer (cnum,cname,crating)values(03,'kamar',200);

insert into customer (cnum,cname,crating)values(04,'kasif',400);

insert into customer (cnum,cname,crating)values(05,'amir',160);

insert into customer (cnum,cname,crating)values(06,'adil',170);

insert into customer (cnum,cname,crating)values(07,'aqib',140);

insert into customer (cnum,cname,crating)values(08,'arif',900);

insert into customer (cnum,cname,crating)values(09,'yusuf',800);

insert into customer (cnum,cname,crating)values(010,'ismail',500);

insert into customer (cnum,cname,crating)values(011,'iqbal',340);

insert into customer (cnum,cname,crating)values(012,'ars',840);

select * from customer;

alter table customer alter column crating  int;

select upper(cname) as Uppercase from customer;

select sum(crating) as Sum from customer;

select max(crating) as Max from customer;

select min(crating) as Min from customer;

select avg(crating) as Avegrage from customer;

select count(*) as TotalRecaords from customer;

select cname from customer 
	group By cname, crating ;

create table employee
(
	empno int primary key identity(01841,1),
	ename varchar(10),
	deptno int
);
insert into employee (ename,deptno)values('ars',840);
insert into employee (ename,deptno)values('kaif',842);
insert into employee (ename,deptno)values('asif',843);
insert into employee (ename,deptno)values('kashif',844);
insert into employee (ename,deptno)values('saif',845);
insert into employee (ename,deptno)values('amir',846);
insert into employee (ename,deptno)values('raheel',847);
insert into employee (ename,deptno)values('masood',848);
insert into employee (ename,deptno)values('rehan',849);
insert into employee (ename,deptno)values('umar',850);

create table dept 
(
	deptno int primary key identity(840,1),
	dname varchar(10),
	dlocation varchar(20)
);
insert into dept (dname,dlocation) values('accounting','mumbai');
insert into dept (dname,dlocation) values('IT','delhi');
insert into dept (dname,dlocation) values('sales','mumbai');
insert into dept (dname,dlocation) values('operation','punjab');
insert into dept (dname,dlocation) values('hr','pune');
insert into dept (dname,dlocation) values('system','dubai');
insert into dept (dname,dlocation) values('logistics','us');
insert into dept (dname,dlocation) values('legal','mumbai');
select * from employee;
select * from dept;



select e.ename,
	   e.empno,
	   d.dname,
	   d.dlocation,
	   e.deptno
from employee as e left join dept as d on e.deptno = d.deptno
