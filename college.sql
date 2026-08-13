create database college;
use college;
CREATE TABLE department (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name ENUM('cse', 'mech', 'eee', 'civil', 'ai'),
    hod VARCHAR(30)
);

CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50),
    student_age INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(dept_id)
);

desc department;
desc student;
select * from department;
select * from student;

INSERT INTO department (dept_name, hod)
VALUES
('cse', 'Dr. Anil Kumar'),
('mech', 'Dr. Priya Nair'),
('eee', 'Dr. Rajesh Menon'),
('civil', 'Dr. Thomas'),
('ai', 'Dr. Raju');


INSERT INTO student (student_name, student_age, department_id)
VALUES
('Arjun', 20, 1),
('Rahul', 21, 1),
('Sneha', 19, 1),
('Akhil', 22, 2),
('Neha', 20, 2),
('Vishnu', 21, 2),
('Anjali', 19, 3),
('Kiran', 22, 3),
('Meera', 20, 3),
('John', 21, 4),
('Aisha', 20, 4),
('Rohan', 22, 5),
('Nithin', 19, 5);


SELECT student.student_name, department.dept_name FROM student INNER JOIN department ON student.department_id = department.dept_id WHERE department.dept_name = 'eee';

select student_name,dept_name from student inner join department on student.department_id = department_id;

select count(student_name) as mech_total from student inner join department on student.department_id = department.dept_id where dept_name = "mech";


select dept_name,student_name from department right join student on student.department_id = department.dept_id;