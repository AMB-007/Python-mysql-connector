create database student_db;
use student_db;
create table student_db(id int auto_increment primary key,name varchar(30) not null,
age int,
place varchar(30),
email varchar(30) unique,
mark int check (mark <= 100),
gender enum("male","female","others"));

desc student_db;
insert into student_db(name,age,place,email,mark,gender)
values
("arjun",22,"kochi","arjun@gmail.com",57,"male"),
("alan",23,"kakkanad","alan@gmail.com",89,"male"),
("needhu",20,"vytilla","neeedhu@gmail.com",67,"female"),
("aswathy",21,"kadavanthra","aswathy@gmail.com",76,"female"),
("robin",24,"infopark","robin@gmail.com",56,"male");

INSERT INTO student_db (name, age, place, email, mark, gender)
VALUES
('Akhil', 20, 'Ernakulam', 'akhil@gmail.com', 78, 'male'),
('Neha', 21, 'Kannur', 'neha@gmail.com', 91, 'female'),
('Vishnu', 22, 'Palakkad', 'vishnu@gmail.com', 67, 'male'),
('Sneha', 19, 'Kozhikode', 'sneha@gmail.com', 95, 'female'),
('Nikhil', 23, 'Malappuram', 'nikhil@gmail.com', 82, 'male'),
('Diya', 20, 'Pathanamthitta', 'diya@gmail.com', 89, 'female'),
('Anoop', 21, 'Idukki', 'anoop@gmail.com', 74, 'male'),
('Fathima', 22, 'Kasaragod', 'fathima@gmail.com', 87, 'female'),
('Joel', 20, 'Wayanad', 'joel@gmail.com', 79, 'male'),
('Chris', 21, 'Thiruvananthapuram', 'chris@gmail.com', 93, 'others');
select * from student_db;
select count(*) from student_db;

select count(*) as female_count from student_db where gender = "female";

select sum(mark) as total from student_db;

select count(*) from student_db where mark < 80;
select avg(age) as age_average from student_db;
select avg(mark) as avg_mark_male from student_db where gender = "male";
select max(mark)  from student_db;
select min(mark) from student_db;

select name,mark from student_db order by mark desc limit 1;

select name,mark from student_db where mark = (select max(mark) from student_db);
select name,mark from student_db where mark = (select min(mark) from student_db);

select name,age from student_db order by age desc limit 1;
select name,age from student_db where age = (select max(age) from student_db);

select name,mark from student_db where mark > (select avg(mark) from student_db);

select name from student_db where name like '%a';
select name from student_db where name like 'a%';


