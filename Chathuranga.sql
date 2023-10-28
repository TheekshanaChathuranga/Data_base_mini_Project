CREATE DATABASE LMS;

USE LMS;

CREATE TABLE Staff
     (
     Staff_id VARCHAR(10),
     Name VARCHAR(30),
     Salary FLOAT(7,2),
     PRIMARY KEY(Staff_id)
     );

CREATE TABLE Admin
     (
     Admin_id VARCHAR(10),
     Staff_id VARCHAR(10),
     Contact_no VARCHAR(11),
     PRIMARY KEY(Admin_id)
     );

CREATE TABLE Dean
     (
     Dean_id VARCHAR(10),
     Staff_id VARCHAR(10),
     Contact_no VARCHAR(11),
     PRIMARY KEY(Dean_id)
     );

CREATE TABLE Lecture
     (
     Lecture_id VARCHAR(10),
     Staff_id VARCHAR(10),
     Contact_no VARCHAR(11),
     PRIMARY KEY(Lecture_id)
     );


INSERT INTO Course
VALUES
('ICT1212','ICT001','Database Management Systems','Mr.P.H.P.Nuwan Laksiri','Theory'),
('ICT1222','ICT001','Database Management Systems Practicum','Mr.P.H.P.Nuwan Laksiri','Practical'),
('ICT1233','ICT001','Server-Side Web Develop','Ms.Rumeshika Wickrama Arachchi','Theory'),
('ICT1242','ICT001','Computer Architecture','Prof. Subash Jayasinghe','Theory'),
('ICT1253','ICT001','Computer Networks','Ms.Chanduni Gamage','Practical'),
('TCS1212','MD004','Fundamentals of Managemente','Ms.Nilamthi Adikaram','Practical'),
('TMS1233','ET001','Discrete Mathematics','Mr.Harshana Senavirathna ','Theory'),
('ENG1212','MD004','English II','Ms.Hiranya Amarasinghe ','Theory');
