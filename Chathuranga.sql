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


-- Show course id and lecturer id --


SELECT Course_id, Lecture_id 
FROM Courses_lecture;



  CREATE TABLE Exam_Marks( 
        Quiz1 INT,
        Quiz2 INT,
        Quiz3 INT,
        Mid_mark INT,
        End_mark INT,
        Assesments INT,
        stuID VARCHAR(20),
        courseID VARCHAR(20),
        DepID VARCHAR(20),
        FOREIGN KEY (stuID) REFERENCES Student(stuID),
        FOREIGN KEY (courseID) REFERENCES Course(courseID),
        FOREIGN KEY (DepID) REFERENCES Department(DepID)
        );  



INSERT INTO ExamMarks VALUES
( 70 , 60 , 60 , 50, 50 , 80 , "TG/2021/1010" , "TCS1212" , "MD004"),
( 80 , 70 , 60 , 60, 70 , 80 , "TG/2021/1011" , "TCS1212" , "MD004"),
( 60 , 50 , 30 , 40, 50 , 60 , "TG/2021/1012" , "TCS1212" , "MD004"),
( 50 , 40 , 40 , 30, 40 , 50 , "TG/2021/1013" , "TCS1212" , "MD004"),
( 40 , 30 , 20 , 20, 30 , 40 , "TG/2021/1014" , "TCS1212" , "MD004"),
( 70 , 80 , 50 , 80, 70 , 80 , "TG/2021/1015" , "TCS1212" , "MD004"),
( 50 , 70 , 00 , 70, 50 , 60 , "TG/2021/1016" , "TCS1212" , "MD004"),
( 80 , 70 , 90 , 60, 70 , 80 , "TG/2021/1017" , "TCS1212" , "MD004"),
( 70 , 60 , 50 , 50, 60 , 70 , "TG/2021/1018" , "TCS1212" , "MD004"),
( 60 , 40 , 90 , 40, 50 , 90 , "TG/2021/1019" , "TCS1212" , "MD004"),
( 50 , 80 , 30 , 30, 40 , 50 , "TG/2020/980" , "TCS1212" , "MD004"),
( 60 , 30 , 70 , 20, 30 , 60 , "TG/2020/810" , "TCS1212" , "MD004"),
( 30 , 60 , 90 , 10, 20 , 70 , "TG/2020/853" , "TCS1212" , "MD004"),
( 60 , 80 , 00 , 00, 10 , 70 , "TG/2019/866" , "TCS1212" , "MD004"),
( 80 , 70 , 60 , 60, 70 , 80 , "TG/2019/854" , "TCS1212" , "MD004"),
( 0 , 0 , 0 , 0 , 0, 0 , "TG/2018/512" , "TCS1212" , "MD004"),
( 0 , 0 , 0 , 0 , 0, 0 , "TG/2018/645" , "TCS1212" , "MD004"),
( 0 , 0 , 0 , 0 , 0, 0 , "TG/2017/420" , "TCS1212" , "MD004"),

( 40 , 70 , 80 , 70, 80 , 90 , "TG/2021/1010" , "TMS1233" , "ET001"),
( 70 , 20 , 80 , 80, 80 , 70 , "TG/2021/1011" , "TMS1233" , "ET001"),
( 20 , 50 , 60 , 60, 60 , 60 , "TG/2021/1012" , "TMS1233" , "ET001"),
( 80 , 70 , 60 , 60, 70 , 80 , "TG/2021/1013" , "TMS1233" , "ET001"),
( 70 , 60 , 50 , 50, 60 , 70 , "TG/2021/1014" , "TMS1233" , "ET001"),
( 60 , 50 , 40 , 80, 50 , 60 , "TG/2021/1015" , "TMS1233" , "ET001"),
( 50 , 40 , 80 , 80, 70 , 50 , "TG/2021/1016" , "TMS1233" , "ET001"),
( 40 , 80 , 50 , 40, 60 , 80 , "TG/2021/1017" , "TMS1233" , "ET001"),
( 30 , 70 , 80 , 80, 50 , 60 , "TG/2021/1018" , "TMS1233" , "ET001"),
( 90 , 10 , 60 , 70, 80 , 40 , "TG/2021/1019" , "TMS1233" , "ET001"),
( 80 , 70 , 60 , 60, 70 , 80 , "TG/2020/980" , "TMS1233" , "ET001"),
( 70 , 60 , 50 , 60, 60 , 70 , "TG/2020/810" , "TMS1233" , "ET001"),
( 60 , 50 , 40 , 80, 50 , 60 , "TG/2020/853" , "TMS1233" , "ET001"),
( 50 , 40 , 70 , 90, 80 , 50 , "TG/2019/866" , "TMS1233" , "ET001"),
( 40 , 30 , 20 , 20, 30 , 40 , "TG/2019/854" , "TMS1233" , "ET001"),
( 0 , 0 , 0 , 0  , 0 , 0 , "TG/2018/512" , "TMS1233" , "ET001"),
( 0 , 0 , 0 , 0  , 0 , 0 , "TG/2018/645" , "TMS1233" , "ET001"),
( 0 , 0 , 0 , 0  , 0 , 0 , "TG/2017/420" , "TMS1233" , "ET001"),


( 80 , 70 , 60, 60, 70 , 80 , "TG/2021/1010" , "ICT1253" , "ICT002T"),
( 80 , 40 , 25, 60, 23 , 74 , "TG/2021/1011" , "ICT1253" , "ICT002T"),
( 40 , 80 , 30, 20, 46 , 23 , "TG/2021/1012" , "ICT1253" , "ICT002T"),
( 50 , 60 , 60, 90, 57 , 12 , "TG/2021/1013" , "ICT1253" , "ICT002T"),
( 75 , 10 , 45, 00, 86 , 85 , "TG/2021/1014" , "ICT1253" , "ICT002T"),
( 80 , 30 , 35, 30, 96 , 69 , "TG/2021/1015" , "ICT1253" , "ICT002T"),
( 70 , 60 , 25, 23, 44 , 35 , "TG/2021/1016" , "ICT1253" , "ICT002T"),
( 20 , 30 , 25, 70, 43 , 97 , "TG/2021/1017" , "ICT1253" , "ICT002T"),
( 40 , 80 , 90, 68, 23 , 23 , "TG/2021/1018" , "ICT1253" , "ICT002T"),
( 20 , 60 , 70, 68, 74 , 74 , "TG/2021/1019" , "ICT1253" , "ICT002T"),
( 80 , 30 , 50, 67, 86 , 35 , "TG/2020/980" , "ICT1253" , "ICT002"),
( 70 , 70 , 10, 45, 75 , 35 , "TG/2020/810" , "ICT1253" , "ICT002"),
( 10 , 80 , 25, 78, 34 , 24 , "TG/2020/853" , "ICT1253" , "ICT002"),
( 30 , 90 , 15, 80, 85 , 23 , "TG/2019/866" , "ICT1253" , "ICT002"),
( 60 , 70 , 20, 45, 12 , 12 , "TG/2019/854" , "ICT1253" , "ICT002"),
( 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/512" , "ICT1253" , "ICT002"),
( 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/645" , "ICT1253" , "ICT002"),
( 0 , 0 , 0 , 0 , 0 , 0 , "TG/2017/420" , "ICT1253" , "ICT002"),

( 45 , 70 , 60, 63, 5 , 20 ,  "TG/2021/1010" , "ICT1242" , "ICT002"),
( 30 , 40 , 65, 20, 4 , 75 ,  "TG/2021/1011" , "ICT1242" , "ICT002"),
( 60 , 80 , 30, 25, 65 , 53 , "TG/2021/1012" , "ICT1242" , "ICT002"),
( 60 , 60 , 60, 76, 34 , 13 , "TG/2021/1013" , "ICT1242" , "ICT002"),
( 08 , 10 , 25, 45, 34 , 83 , "TG/2021/1014" , "ICT1242" , "ICT002"),
( 80 , 30 , 75, 34, 56 , 76 , "TG/2021/1015" , "ICT1242" , "ICT002"),
( 65 , 60 , 25, 00, 67 , 23 , "TG/2021/1016" , "ICT1242" , "ICT002"),
( 25 , 30 , 75, 35, 78 , 23 , "TG/2021/1017" , "ICT1242" , "ICT002"),
( 45 , 80 , 40, 65, 23 , 76 , "TG/2021/1018" , "ICT1242" , "ICT002"),
( 20 , 60 , 20, 15, 86 , 57 , "TG/2021/1019" , "ICT1242" , "ICT002"),
( 80 , 30 , 30, 15, 12 , 34 , "TG/2020/980" , "ICT1242" , "ICT002"),
( 75 , 70 , 60, 65, 75 , 23 , "TG/2020/810" , "ICT1242" , "ICT002"),
( 25 , 80 , 45, 75, 76 , 27 , "TG/2020/853" , "ICT1242" , "ICT002"),
( 24 , 90 , 35, 21, 12 , 23 ,  "TG/2019/866" , "ICT1242" , "ICT002"),
( 60 , 70 , 70, 5 , 54 , 87 ,  "TG/2019/854" , "ICT1242" , "ICT002"),
( 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/512" , "ICT1242" , "ICT002"),
( 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/645" , "ICT1242" , "ICT002"),
( 0 , 0 , 0 , 0 , 0 , 0 , "TG/2017/420" , "ICT1242" , "ICT002"),


( 80,70,80,78,90,75,   "TG/2021/1010","ICT1222","ICT002"),
( 90,25,90,76,56,76,   "TG/2021/1011","ICT1222","ICT002"),
( 50,60,70,65,76,86,   "TG/2021/1012","ICT1222","ICT002"),
( 30,10,60,50,34,72,   "TG/2021/1013","ICT1222","ICT002"),
( 00,10,10,35,36,50,   "TG/2021/1014","ICT1222","ICT002"),
( 100,100,100,78,90,98,"TG/2021/1015","ICT1222","ICT002"),
( 80,70,80,78,90,25,   "TG/2021/1016","ICT1222","ICT002"),
( 75,35,55,44,10,57,   "TG/2021/1017","ICT1222","ICT002"),
( 65,15,85,67,90,45,   "TG/2021/1018","ICT1222","ICT002"),
( 95,55,60,91,79,81,   "TG/2021/1019","ICT1222","ICT002"),
( 85,35,75,10,80,69,     "TG/2020/980","ICT1222","ICT002"),
( 100,100,100,100,100,48,"TG/2020/810","ICT1222","ICT002"),
( 90,90,90,90,99,65,     "TG/2020/853","ICT1222","ICT002"),
( 65,55,50,65,65,58,     "TG/2019/866","ICT1222","ICT002"),
( 55,45,65,72,66,78,     "TG/2019/854","ICT1222","ICT002"),
( 0,0,0,0,0,0,"TG/2018/512","ICT1222","ICT002"),
( 0,0,0,0,0,0,"TG/2018/645","ICT1222","ICT002"),
( 0,0,0,0,0,0,"TG/2017/420","ICT1222","ICT002"), 
    

(30,50,10,78,90,67,   "TG/2021/1010","ICT1233","ICT002"),
(30,20,10,55,26,55,   "TG/2021/1011","ICT1233","ICT002"),
(35,25,75,63,72,77,   "TG/2021/1012","ICT1233","ICT002"),
(30,10,60,50.3,34,90, "TG/2021/1013","ICT1233","ICT002"),
(00,10,10,35,56.9,95, "TG/2021/1014","ICT1233","ICT002"),
(100,100,100,78,90,85,"TG/2021/1015","ICT1233","ICT002"),
(80,75,80,78,90,32,   "TG/2021/1016","ICT1233","ICT002"),
(75,35,55,44.5,10,52, "TG/2021/1017","ICT1233","ICT002"),
(65,75,85,67,90,45,   "TG/2021/1018","ICT1233","ICT002"),
(95,55,60,91.2,79,65, "TG/2021/1019","ICT1233","ICT002"),
(65,35,75,10,80,43,      "TG/2020/980","ICT1233","ICT002"),
(100,100,100,100,100,100,"TG/2020/810","ICT1233","ICT002"),
(90,90,90,90,99,59,      "TG/2020/853","ICT1233","ICT002"),
(65,55,50,65,65,82,      "TG/2019/866","ICT1233","ICT002"),
(55,45,65,72,66,92,      "TG/2019/854","ICT1233","ICT002"),
(0,0,0,0,0,0,"TG/2018/512","ICT1233","ICT002"),
(0,0,0,0,0,0,"TG/2018/645","ICT1233","ICT002"),
(0,0,0,0,0,0,"TG/2017/420","ICT1233","ICT002"), 

    
( 85 , 65 , 70 , 65, 60 , 20 , "TG/2021/1010" , "ENG1222","MD004"),
( 84 , 75 , 60 , 70, 40 , 45 , "TG/2021/1011" , "ENG1222","MD004"),
( 60 , 70 , 65 , 70, 55 , 60 , "TG/2021/1012" , "ENG1222","MD004"),
( 70 , 80 , 40 , 80, 65 , 45 , "TG/2021/1013" , "ENG1222","MD004"),
( 80 , 85 , 45 , 65, 55 , 50 , "TG/2021/1014" , "ENG1222","MD004"),
( 90 , 75 , 30 , 75, 75 , 30 , "TG/2021/1015" , "ENG1222","MD004"),
( 65 , 70 , 55 , 20, 65 , 45 , "TG/2021/1016" , "ENG1222","MD004"),
( 75 , 65 , 65 , 80, 55 , 35 , "TG/2021/1017" , "ENG1222","MD004"),
( 70 , 60 , 55 , 85, 90 , 10 , "TG/2021/1018" , "ENG1222","MD004"),
( 85 , 75 , 75 , 90, 85 , 30 , "TG/2021/1019" , "ENG1222","MD004"),

(  60, 55 , 65, 55 , 75 , 50 , "TG/2020/980" ,"ENG1222","MD004"),
(  60, 70 , 40, 75 ,  60 , 55, "TG/2020/810", "ENG1222","MD004"),
(  70 , 65 , 55 , 90 , 90 , 40 ,"TG/2020/853", "ENG1222","MD004"),
(  85 , 75 , 55 , 70 , 40 , 20 ,"TG/2019/866", "ENG1222","MD004"),
(  30, 65 , 45, 60  , 80 , 40 , "TG/2019/854" , "ENG1222","MD004"),

( 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/512"  , "ENG1222","MD004"),
( 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/645"  , "ENG1222","MD004"),
( 0 , 0 , 0 , 0 , 0 , 0 , "TG/2017/420"  , "ENG1222","MD004"),


( 85 , 60 , 70 , 65 , 70 , 80 , "TG/2021/1010" , "ICT1212","ICT002"),
( 75 , 70 , 65 , 55 , 35 , 60 , "TG/2021/1011" , "ICT1212","ICT002"),
( 80 , 75 , 40 , 70 , 70 , 75 , "TG/2021/1012" , "ICT1212","ICT002"),
( 85 , 65 , 60 , 80 , 65 , 70 , "TG/2021/1013" , "ICT1212","ICT002"),
( 90 , 85 , 65 , 80 , 90 , 65 , "TG/2021/1014" , "ICT1212","ICT002"),
( 80 , 90 , 50 , 65 , 75 , 45 , "TG/2021/1015" , "ICT1212","ICT002"),
( 65 , 45 , 60 , 70 , 70 , 55 , "TG/2021/1016" , "ICT1212","ICT002"),
( 75 , 40 , 40 , 90 , 70 , 80 , "TG/2021/1017" , "ICT1212","ICT002"),
( 80 , 20 , 50 , 80 , 65 , 75 , "TG/2021/1018" , "ICT1212","ICT002"),
( 85 , 50 , 90 , 70 , 55 , 80 , "TG/2021/1019" , "ICT1212","ICT002"),

( 50 , 70 , 80 , 65 , 55 , 65 , "TG/2020/980"  , "ICT1212","ICT002"),
( 60 , 80 , 70 , 75 , 65 , 90 , "TG/2020/810"  , "ICT1212","ICT002"),
( 70 , 90 , 60 , 80 , 75 , 80 , "TG/2020/853"  , "ICT1212","ICT002"),
( 90 , 75 , 65 , 65 , 85 , 85 , "TG/2019/866"  , "ICT1212","ICT002"),
( 80 , 75 , 65 , 45 , 75 , 80 , "TG/2019/854"  , "ICT1212","ICT002"),

( 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/512"  , "ICT1212","ICT002"),
( 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/645"  , "ICT1212","ICT002"),
( 0 , 0 , 0 , 0 , 0 , 0 , "TG/2017/420"  , "ICT1212","ICT002"); 
