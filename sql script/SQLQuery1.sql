-- Constraints 
-- NOT NULL -> VALUE MUST BE THERE NULL VALUE IS NOT ALLOWED.
-- UNIQUE -> ALL VALUES MUST BE UNIQUE ALTHOUGH NULL VALUE  IS ALLOWED 
-- CHECK --> check the condition  [age int check (age>18);]
-- Default --> dfault value 
-- Primary Key -- > uniue + not null.
-- forein key --> relation btw table maintain integrity.

-- Example
create table student
(
	stdID int unique,
	stdname varchar(10) not null,
	gender char check (gender in ('m','f','t')),
	age int default 20 
);
select * from student;
     
Seo .
Analytics .
Web dev .
Mobile .
Excel and Google .