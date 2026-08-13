create database sample;
use sample;
-- create table employee(id int primary key,first_name varchar(30),last_name varchar(30),age int,proffession varchar(50),country varchar(50));
desc employee;
select * from employee;
select country, count(*) from employee group by country;

select proffession,count(*) from employee group by proffession;
select country,avg(age) from employee group by country;
select country,max(age) from employee group by country;
select country,min(age) from employee group by country;
select proffession,count(*),avg(age) from employee group by proffession;

