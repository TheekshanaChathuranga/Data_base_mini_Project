CREATE DATABASE LMS;

USE LMS;

CREATE TABLE Staff
     (
     Staff_id VARCHAR(10),
     Name VARCHAR(30),
     Salary FLOAT(10,2),
     Department_id VARCHAR(8),
     PRIMARY KEY(Staff_id),
     FOREIGN KEY (Department_id) REFERENCES Department(Department_id)
     );

CREATE TABLE Admin
     (
     Admin_id VARCHAR(10),
     Staff_id VARCHAR(10),
     Contact_no VARCHAR(12),
     PRIMARY KEY(Admin_id)
     );

CREATE TABLE Dean
     (
     Dean_id VARCHAR(10),
     Staff_id VARCHAR(10),
     Contact_no VARCHAR(12),
     PRIMARY KEY(Dean_id)
     );

CREATE TABLE Lecture
     (
     Lecture_id VARCHAR(10),
     Staff_id VARCHAR(10),
     Contact_no VARCHAR(12),
     PRIMARY KEY(Lecture_id)
     );

CREATE TABLE Courses_lecture (
     Course_id VARCHAR(10),
     Lecture_id VARCHAR(10),
     PRIMARY KEY (Course_id, Lecture_id)
     );


INSERT INTO staff
VALUES
('S0001','Mr.Thushara Ekanayake','110000.00','NULL'),
('S0002','Mr.Ruwan Perera','180000.00','NULL'),
('S0003','Mr.Sunil Premasiri','90000.00','ET001'),
('S0004','Mr.Ishan Rangajeewa','90000.00','ET001'),
('S0005','Mr.P.H.P.Nuwan Laksiri','90000.00','ICT002'),
('S0006','s.Rumeshika Wickrama Arachchi','90000.00','ICT002'),
('S0007','Prof. Subash Jayasinghe','90000.00','ICT002'),
('S0008','Ms.Chanduni Gamage','90000.00','ICT002'),
('S0009','Ms.Nilamthi Adikaram','90000.00','ICT002'),
('S0010','Mr.Harshana Senavirathna','90000.00','ICT002'),
('S0011','Ms.Hiranya Amarasinghe','90000.00','ICT002'),
('S0012','Ms.Madhubashini Bandara','90000.00','BST003'),
('S0013','Ms.Nalani Jayasooriya','90000.00','BST003'),
('S0014','Mr.Kasun Indipa','90000.00','BST003'),
('S0015','Ms.Nilanthi Kumari','90000.00','MD004'),
('S0016','Ms.Nethmi Herath','90000.00','MD004'),
('S0017','Mr.Chathuranga Adhikari','90000.00','MD004'),
('S0018','Ms.Ruwangi Ekanayake','90000.00','MD004'),
('S0019','Ms.Nipuni Ayodya','90000.00','MD004'),
('S0020','Mr.Sampath Kumara','60000.00','ET001'),
('S0021','Mr.Sanjaya Kavishka','60000.00','ICT002'),
('S0022','Mr.Nirmal Silva','60000.00','BST003'),
('S0023','Mr.Pethum Madhusanka','60000.00','MD004')
;


INSERT INTO Admin
VALUES
('A001','S0001','071-2468123')
;


INSERT INTO Dean
VALUES
('A001','S0002','072-6898235')
;


INSERT INTO Lecture
VALUES
('L001','S0003','071-8383648'),
('L002','S0004','076-2546789'),
('L003','S0005','072-1469887'),
('L004','S0006','077-3497256'),
('L005','S0007','076-6487298'),
('L006','S0008','070-3546845'),
('L007','S0009','070-4793168'),
('L008','S0010','072-5246316'),
('L009','S0011','074-7896548'),
('L010','S0012','071-1245687'),
('L011','S0013','070-3465556'),
('L012','S0014','076-3318799'),
('L013','S0015','076-2452525'),
('L014','S0016','070-7878956'),
('L015','S0017','072-2232555'),
('L016','S0018','075-4578888'),
('L017','S0019','075-0189256');





INSERT INTO Courses_lecture (Course_id, Lecture_id)
VALUES
     ('ICT1212', 'L003'),
     ('ICT1222', 'L003'),
     ('ICT1233', 'L004'),
     ('ICT1242', 'L005'),
     ('ICT1253', 'L006'),
     ('TCS1212', 'L007'),
     ('TMS1233', 'L008'),
     ('ENG1212', 'L009');



-- With All privileges with Grant Option for all the tables in the database 

CREATE USER 'Admin'@'localhost' IDENTIFIED BY 'adminpwd';
GRANT ALL PRIVILEGES ON lms TO 'Admin'@'localhost' WITH GRANT OPTION;


-- With All privileges without Grant for all the tables in the database

CREATE USER 'Dean'@'localhost' IDENTIFIED BY 'deanpwd';
GRANT ALL PRIVILEGES ON lms TO 'Dean'@'localhost';


-- All privileges without Grant and user creation for all the tables in the database

CREATE USER 'Lecturer'@'localhost' IDENTIFIED BY 'lecturer';
GRANT SELECT, INSERT, UPDATE, DELETE ON lms TO 'Lecturer'@'localhost';


-- Read, write and update permissions for attendance related tables/views

CREATE USER 'Technical_Officer'@'localhost' IDENTIFIED BY 'topwd';
GRANT SELECT, INSERT, UPDATE ON lms.attendance TO 'Technical_Officer'@'localhost';


-- Read permission for final attendance and final marks/Grades tables/views

CREATE USER 'Student'@'localhost' IDENTIFIED BY 'Studentpwd';
GRANT SELECT ON lms.attendance TO 'Student'@'localhost';
GRANT SELECT ON lms.final_mark TO 'Student'@'localhost';
GRANT SELECT ON lms.mark TO 'Student'@'localhost';


Create view  student_cource AS 
SELECT s.Student_id, s.Name, c.C_name
FROM Student s
JOIN Course c ON s.Course_id = c.Course_id;


SELECT * FROM student_cource;


--SHOW staff_id , Name , salary--

Create view  staff_details AS 
SELECT Staff_id, Name, Salary 
FROM Staff;


SELECT * FROM staff_details;

