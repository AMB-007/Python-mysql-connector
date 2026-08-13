CREATE DATABASE college_db;
USE college_db;
create table student(id int auto_increment primary key,
f_name varchar(30) not null,
m_name varchar(10),
l_name varchar(30),
age int,
gender enum("male","female","other"),
course enum("python","java","data science"),
city varchar(30) not null,
email varchar(30) unique,
phone varchar(15),
admission_date date,
statue enum("active","inactive") default "active");

select * from student;


INSERT INTO student
(f_name, m_name, l_name, age, gender, course, city, email, phone, admission_date, statue)
VALUES
('Arjun', 'M', 'Babu', 22, 'Male', 'Python', 'Kochi', 'arjun@gmail.com', '9876543210', '2026-08-01', 'Active'),
('Anu', 'K', 'Nair', 20, 'Female', 'Java', 'Thrissur', 'anu@gmail.com', '9876543211', '2026-08-02', 'Inactive'),
('Rahul', 'P', 'Krishna', 24, 'Male', 'Data Science', 'Calicut', 'rahul@gmail.com', '9876543212', '2026-08-03', 'Active'),
('Meera', 'S', 'Menon', 19, 'Female', 'Python', 'Trivandrum', 'meera@gmail.com', '9876543213', '2026-08-04', 'Active'),
('Vishnu', 'R', 'Pillai', 23, 'Male', 'Java', 'Kannur', 'vishnu@gmail.com', '9876543214', '2026-08-05', DEFAULT),
('Sneha', 'L', 'Joseph', 21, 'Female', 'Data Science', 'Kottayam', 'sneha@gmail.com', '9876543215', '2026-08-06', DEFAULT);


select * from student;
select f_name,course,city from student;
select * from student where course = "data science";
select * from student where age > 20;
select * from student where city = "kochi";
