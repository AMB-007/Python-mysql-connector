create database hospital_db;
use hospital_db;
create table doctor(id int auto_increment primary key,
name varchar(50),
specialized varchar(50),
experience int);

CREATE TABLE patient (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    disease VARCHAR(50),
    bill_amount INT,
    doctor_id INT,
    FOREIGN KEY (doctor_id) REFERENCES doctor(id) ON DELETE CASCADE
);

INSERT INTO doctor (name, specialized, experience)
VALUES
('Dr. Arun Kumar', 'Cardiologist', 12),
('Dr. Meera Nair', 'Dermatologist', 8),
('Dr. Rahul Menon', 'Neurologist', 15),
('Dr. Anjali Thomas', 'Pediatrician', 6),
('Dr. Vishnu Raj', 'Orthopedic', 10),
('Dr. Priya Sharma', 'Gynecologist', 9),
('Dr. Suresh Babu', 'ENT Specialist', 11),
('Dr. Neha Joseph', 'Ophthalmologist', 7),
('Dr. Akhil Das', 'General Physician', 5),
('Dr. Kavya Menon', 'Psychiatrist', 13);


INSERT INTO patient (name, age, disease, bill_amount, doctor_id)
VALUES
('Rahul Kumar', 25, 'Heart Disease', 25000, 1),
('Anjali Nair', 32, 'Skin Allergy', 8000, 2),
('Vivek Menon', 45, 'Migraine', 12000, 3),
('Sneha Thomas', 8, 'Fever', 3000, 4),
('Arjun Raj', 38, 'Fracture', 18000, 5),
('Lakshmi Devi', 29, 'PCOS', 15000, 6),
('Manu Joseph', 41, 'Sinusitis', 7000, 7),
('Diya Sharma', 22, 'Eye Infection', 5000, 8),
('Rohit Das', 50, 'Diabetes', 10000, 9),
('Fathima Ali', 35, 'Anxiety', 9000, 10),
('Nikhil Kumar', 60, 'Heart Disease', 30000, 1),
('Reshma Nair', 27, 'Skin Infection', 6500, 2),
('Anoop Menon', 48, 'Epilepsy', 20000, 3),
('Maya Thomas', 6, 'Asthma', 4500, 4),
('Sanjay Raj', 34, 'Knee Injury', 14000, 5);


SELECT * FROM doctor;
SELECT * FROM patient;
desc patient;
SELECT doctor_id, COUNT(*) AS patient_count FROM patient
GROUP BY doctor_id;

-- group by is used to combine rows having the same value into group so we can perform calculation on each grp

select doctor_id,sum(bill_amount) as total_billl from patient group by doctor_id;
select doctor_id,avg(bill_amount) as average from patient group by doctor_id;

select doctor_id,max(bill_amount) as highest from patient group by doctor_id;

SELECT 
    doctor.name,
    COUNT(patient.id) AS total_patients
FROM doctor
JOIN patient
ON doctor.id = patient.doctor_id
GROUP BY doctor.id, doctor.name;


select disease, count(*) as total_patients
from patient
group by disease;

select disease ,  max(bill_amount) from patient group by disease;
 
select disease ,  min(bill_amount) from patient group by disease;

select disease ,  avg(bill_amount) from patient group by disease;

select doctor_id,disease,count(*) as total from patient group by doctor_id,disease;