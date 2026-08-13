create database company_db;
use company_db;
create table employee(id int auto_increment primary key,
f_naame varchar(30) not null,
m_name varchar(30),
l_name varchar(30),
age int check(age >= 18),
email varchar(50) unique,
gender enum("male","female","others"),
status enum("active","inactive") default "active");
select * from employee;


insert into employees(f_naame,m_name,l_name,age,email,gender)
values
("arjun","m","babu",22,"arjun@gmail.com","male");

INSERT INTO employee (f_naame, m_name, l_name, age, email, gender)
VALUES
('Anu', 'K', 'Nair', 24, 'anu@gmail.com', 'Female'),
('Rahul', 'P', 'Krishna', 27, 'rahul@gmail.com', 'Male'),
('Meera', 'S', 'Menon', 23, 'meera@gmail.com', 'Female'),
('Vishnu', 'R', 'Pillai', 29, 'vishnu@gmail.com', 'Male');

select * from employee where id = 2;
alter table employee rename column f_naame to first_name;

alter table employee modify email varchar(100);
describe employees;

alter table employee drop column salary;

update employee set age = 26 where id = 1;
update employee set email = "anu123@gmail.com" where id = 2;
update employee set first_name = "vinay",l_name = "k",age = 32,email = "v@gmail.com" where id = 2;

delete from employee where id = 3;
delete from employee;
truncate table employee;
update employee set age = null where id = 1;
alter table employee rename to employees;
select * from employees;
INSERT INTO employees (first_name, m_name, l_name, age, email, gender)
VALUES
('Akhil', 'R', 'Varma', 26, 'akhil@gmail.com', 'Male'),
('Neha', 'S', 'Nair', 24, 'neha@gmail.com', 'Female'),
('Vishal', 'K', 'Kumar', 29, 'vishal@gmail.com', 'Male'),
('Divya', 'P', 'Menon', 27, 'divya@gmail.com', 'Female'),
('Rohit', 'M', 'Das', 31, 'rohit@gmail.com', 'Male'),
('Megha', 'J', 'Pillai', 26, 'megha@gmail.com', 'Female');


select * from employees where age > 30;
select * from employees where gender = "male";
select first_name,age from employees where age < 30;
select * from employees where first_name  = "arjun";


add column salary DECIMAL(10,2) DEFAULT 20000;
select * from employees where salary < 20000;
select * from employees where age != 32;

select * from employees where age > 30 and gender = "male";
select * from employees where age > 30 or gender = "male";
select * from employees where age < 31 and age > 25;
-- select employees who are in age between 25 and 32
select * from employees where age between 25 and 32;

-- is used to sort the reuslt set of a query in either ascending or descending order
select * from employees order by age;
select * from employees order by age desc;
select first_name,age from employees order by first_name;
select first_name,age from employees order by first_name desc;

desc employees;

-- Sql limit clause is used to restrict the number of records returned by a query
select * from employees  limit 2;
select first_name,email,age from employees order by age limit 1;



