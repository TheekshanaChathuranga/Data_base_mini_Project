-----/*Crerate Table*/----

/*Create Course Table*/
CREATE TABLE Course(
    Course_id VARCHAR(10),
    Department_id VARCHAR(10),
    C_name VARCHAR(50),
    Lecture_in_charge VARCHAR(30),
    Theory_OR_Practical VARCHAR(10),
    CONSTRAINT Course PRIMARY KEY (Course_id,Department_id) 
    );

/*Create Student Table*/
CREATE TABLE Student(
    Student_id VARCHAR(10),
    Name VARCHAR(30),
    Contact_no VARCHAR(11),
    Admin_id VARCHAR(10),
    Officer_id VARCHAR(10),
    Dean_id VARCHAR(10),
    Course_id VARCHAR(10),
    PRIMARY KEY (Student_id,Course_id)
    );

/*Create Courses_lecture Table*/
CREATE TABLE Courses_lecture(
	Course_id VARCHAR(10),
	Lecture_id VARCHAR(10),
	PRIMARY KEY (Course_id,Lecture_id)
    );

----/*Finish Create Table*/------


------/*Data Insert to Table*/------


/*Insert Data For Course table*/
INSERT INTO Course
VALUES
('ICT1212','ICT002','Database Management Systems','Mr.P.H.P.Nuwan Laksiri','Theory'),
('ICT1222','ICT002','Database Management Systems Practicum','Mr.P.H.P.Nuwan Laksiri','Practical'),
('ICT1233','ICT002','Server-Side Web Develop','Ms.Rumeshika Wickrama Arachchi','Theory'),
('ICT1242','ICT002','Computer Architecture','Prof. Subash Jayasinghe','Theory'),
('ICT1253','ICT002','Computer Networks','Ms.Chanduni Gamage','Practical'),
('TCS1212','MD004','Fundamentals of Managemente','Ms.Nilamthi Adikaram','Practical'),
('TMS1233','ET001','Discrete Mathematics','Mr.Harshana Senavirathna ','Theory'),
('ENG1212','MD004','English II','Ms.Hiranya Amarasinghe ','Theory')
;

/*Insert Data For Student table*/
INSERT INTO student
VALUES
('TG1010','Ishani Kawshalya','071-1245789','A001','T002','D001','ICT1212'),
('TG1010','Ishani Kawshalya','071-1245789','A001','T002','D001','ICT1222'),
('TG1010','Ishani Kawshalya','071-1245789','A001','T002','D001','ICT1233'),
('TG1010','Ishani Kawshalya','071-1245789','A001','T002','D001','ICT1242'),
('TG1010','Ishani Kawshalya','071-1245789','A001','T002','D001','ICT1253'),
('TG1010','Ishani Kawshalya','071-1245789','A001','T002','D001','TCS1212'),
('TG1010','Ishani Kawshalya','071-1245789','A001','T002','D001','TMS1233'),
('TG1010','Ishani Kawshalya','071-1245789','A001','T002','D001','ENG1212'),

('TG1011','Asith Indipa','074-1295989','A001','T002','D001','ICT1212'),
('TG1011','Asith Indipa','074-1295989','A001','T002','D001','ICT1222'),
('TG1011','Asith Indipa','074-1295989','A001','T002','D001','ICT1233'),
('TG1011','Asith Indipa','074-1295989','A001','T002','D001','ICT1242'),
('TG1011','Asith Indipa','074-1295989','A001','T002','D001','ICT1253'),
('TG1011','Asith Indipa','074-1295989','A001','T002','D001','TCS1212'),
('TG1011','Asith Indipa','074-1295989','A001','T002','D001','TMS1233'),
('TG1011','Asith Indipa','074-1295989','A001','T002','D001','ENG1212'),

('TG1012','Anuhas Rajapaksha','071-3225729','A001','T002','D001','ICT1212'),
('TG1012','Anuhas Rajapaksha','071-3225729','A001','T002','D001','ICT1222'),
('TG1012','Anuhas Rajapaksha','071-3225729','A001','T002','D001','ICT1233'),
('TG1012','Anuhas Rajapaksha','071-3225729','A001','T002','D001','ICT1242'),
('TG1012','Anuhas Rajapaksha','071-3225729','A001','T002','D001','ICT1253'),
('TG1012','Anuhas Rajapaksha','071-3225729','A001','T002','D001','TCS1212'),
('TG1012','Anuhas Rajapaksha','071-3225729','A001','T002','D001','TMS1233'),
('TG1012','Anuhas Rajapaksha','071-3225729','A001','T002','D001','ENG1212'),

('TG1013','Hashan Madhuranga','070-2545725','A001','T002','D001','ICT1212'),
('TG1013','Hashan Madhuranga','070-2545725','A001','T002','D001','ICT1222'),
('TG1013','Hashan Madhuranga','070-2545725','A001','T002','D001','ICT1233'),
('TG1013','Hashan Madhuranga','070-2545725','A001','T002','D001','ICT1242'),
('TG1013','Hashan Madhuranga','070-2545725','A001','T002','D001','ICT1253'),
('TG1013','Hashan Madhuranga','070-2545725','A001','T002','D001','TCS1212'),
('TG1013','Hashan Madhuranga','070-2545725','A001','T002','D001','TMS1233'),
('TG1013','Hashan Madhuranga','070-2545725','A001','T002','D001','ENG1212'),

('TG1014','Nipuni Bandara','077-2245588','A001','T002','D001','ICT1212'),
('TG1014','Nipuni Bandara','077-2245588','A001','T002','D001','ICT1222'),
('TG1014','Nipuni Bandara','077-2245588','A001','T002','D001','ICT1233'),
('TG1014','Nipuni Bandara','077-2245588','A001','T002','D001','ICT1242'),
('TG1014','Nipuni Bandara','077-2245588','A001','T002','D001','ICT1253'),
('TG1014','Nipuni Bandara','077-2245588','A001','T002','D001','TCS1212'),
('TG1014','Nipuni Bandara','077-2245588','A001','T002','D001','TMS1233'),
('TG1014','Nipuni Bandara','077-2245588','A001','T002','D001','ENG1212'),

('TG1015','Chathuranga Nipun','076-9842637','A001','T002','D001','ICT1212'),
('TG1015','Chathuranga Nipun','076-9842637','A001','T002','D001','ICT1222'),
('TG1015','Chathuranga Nipun','076-9842637','A001','T002','D001','ICT1233'),
('TG1015','Chathuranga Nipun','076-9842637','A001','T002','D001','ICT1242'),
('TG1015','Chathuranga Nipun','076-9842637','A001','T002','D001','ICT1253'),
('TG1015','Chathuranga Nipun','076-9842637','A001','T002','D001','TCS1212'),
('TG1015','Chathuranga Nipun','076-9842637','A001','T002','D001','TMS1233'),
('TG1015','Chathuranga Nipun','076-9842637','A001','T002','D001','ENG1212'),

('TG1016','Dhanushka Udayantha','071-5142725','A001','T002','D001','ICT1212'),
('TG1016','Dhanushka Udayantha','071-5142725','A001','T002','D001','ICT1222'),
('TG1016','Dhanushka Udayantha','071-5142725','A001','T002','D001','ICT1233'),
('TG1016','Dhanushka Udayantha','071-5142725','A001','T002','D001','ICT1242'),
('TG1016','Dhanushka Udayantha','071-5142725','A001','T002','D001','ICT1253'),
('TG1016','Dhanushka Udayantha','071-5142725','A001','T002','D001','TCS1212'),
('TG1016','Dhanushka Udayantha','071-5142725','A001','T002','D001','TMS1233'),
('TG1016','Dhanushka Udayantha','071-5142725','A001','T002','D001','ENG1212'),

('TG1017','Charuka Bandara','072-5372982','A001','T002','D001','ICT1212'),
('TG1017','Charuka Bandara','072-5372982','A001','T002','D001','ICT1222'),
('TG1017','Charuka Bandara','072-5372982','A001','T002','D001','ICT1233'),
('TG1017','Charuka Bandara','072-5372982','A001','T002','D001','ICT1242'),
('TG1017','Charuka Bandara','072-5372982','A001','T002','D001','ICT1253'),
('TG1017','Charuka Bandara','072-5372982','A001','T002','D001','TCS1212'),
('TG1017','Charuka Bandara','072-5372982','A001','T002','D001','TMS1233'),
('TG1017','Charuka Bandara','072-5372982','A001','T002','D001','ENG1212'),

('TG1018','Tharushika Himansi','078-8642384','A001','T002','D001','ICT1212'),
('TG1018','Tharushika Himansi','078-8642384','A001','T002','D001','ICT1222'),
('TG1018','Tharushika Himansi','078-8642384','A001','T002','D001','ICT1233'),
('TG1018','Tharushika Himansi','078-8642384','A001','T002','D001','ICT1242'),
('TG1018','Tharushika Himansi','078-8642384','A001','T002','D001','ICT1253'),
('TG1018','Tharushika Himansi','078-8642384','A001','T002','D001','TCS1212'),
('TG1018','Tharushika Himansi','078-8642384','A001','T002','D001','TMS1233'),
('TG1018','Tharushika Himansi','078-8642384','A001','T002','D001','ENG1212'),

('TG1019','Ravindu Harshana','076-2346821','A001','T002','D001','ICT1212'),
('TG1019','Ravindu Harshana','076-2346821','A001','T002','D001','ICT1222'),
('TG1019','Ravindu Harshana','076-2346821','A001','T002','D001','ICT1233'),
('TG1019','Ravindu Harshana','076-2346821','A001','T002','D001','ICT1242'),
('TG1019','Ravindu Harshana','076-2346821','A001','T002','D001','ICT1253'),
('TG1019','Ravindu Harshana','076-2346821','A001','T002','D001','TCS1212'),
('TG1019','Ravindu Harshana','076-2346821','A001','T002','D001','TMS1233'),
('TG1019','Ravindu Harshana','076-2346821','A001','T002','D001','ENG1212'),

('TG1020','Harshi Gamage','074-9721456','A001','T002','D001','ICT1212'),
('TG1020','Harshi Gamage','074-9721456','A001','T002','D001','ICT1222'),
('TG1020','Harshi Gamage','074-9721456','A001','T002','D001','ICT1233'),
('TG1020','Harshi Gamage','074-9721456','A001','T002','D001','ICT1242'),
('TG1020','Harshi Gamage','074-9721456','A001','T002','D001','ICT1253'),
('TG1020','Harshi Gamage','074-9721456','A001','T002','D001','TCS1212'),
('TG1020','Harshi Gamage','074-9721456','A001','T002','D001','TMS1233'),
('TG1020','Harshi Gamage','074-9721456','A001','T002','D001','ENG1212'),

('TG1021','Nipuni Kumari','072-3131654','A001','T002','D001','ICT1212'),
('TG1021','Nipuni Kumari','072-3131654','A001','T002','D001','ICT1222'),
('TG1021','Nipuni Kumari','072-3131654','A001','T002','D001','ICT1233'),
('TG1021','Nipuni Kumari','072-3131654','A001','T002','D001','ICT1242'),
('TG1021','Nipuni Kumari','072-3131654','A001','T002','D001','ICT1253'),
('TG1021','Nipuni Kumari','072-3131654','A001','T002','D001','TCS1212'),
('TG1021','Nipuni Kumari','072-3131654','A001','T002','D001','TMS1233'),
('TG1021','Nipuni Kumari','072-3131654','A001','T002','D001','ENG1212'),

('TG1022','Wasantha Kumara','077-8564923','A001','T002','D001','ICT1212'),
('TG1022','Wasantha Kumara','077-8564923','A001','T002','D001','ICT1222'),
('TG1022','Wasantha Kumara','077-8564923','A001','T002','D001','ICT1233'),
('TG1022','Wasantha Kumara','077-8564923','A001','T002','D001','ICT1242'),
('TG1022','Wasantha Kumara','077-8564923','A001','T002','D001','ICT1253'),
('TG1022','Wasantha Kumara','077-8564923','A001','T002','D001','TCS1212'),
('TG1022','Wasantha Kumara','077-8564923','A001','T002','D001','TMS1233'),
('TG1022','Wasantha Kumara','077-8564923','A001','T002','D001','ENG1212'),

('TG1023','Sanath Gamage','076-5588469','A001','T002','D001','ICT1212'),
('TG1023','Sanath Gamage','076-5588469','A001','T002','D001','ICT1222'),
('TG1023','Sanath Gamage','076-5588469','A001','T002','D001','ICT1233'),
('TG1023','Sanath Gamage','076-5588469','A001','T002','D001','ICT1242'),
('TG1023','Sanath Gamage','076-5588469','A001','T002','D001','ICT1253'),
('TG1023','Sanath Gamage','076-5588469','A001','T002','D001','TCS1212'),
('TG1023','Sanath Gamage','076-5588469','A001','T002','D001','TMS1233'),
('TG1023','Sanath Gamage','076-5588469','A001','T002','D001','ENG1212'),

('TG1024','Wathsala Sathsarani','071-8668963','A001','T002','D001','ICT1212'),
('TG1024','Wathsala Sathsarani','071-8668963','A001','T002','D001','ICT1222'),
('TG1024','Wathsala Sathsarani','071-8668963','A001','T002','D001','ICT1233'),
('TG1024','Wathsala Sathsarani','071-8668963','A001','T002','D001','ICT1242'),
('TG1024','Wathsala Sathsarani','071-8668963','A001','T002','D001','ICT1253'),
('TG1024','Wathsala Sathsarani','071-8668963','A001','T002','D001','TCS1212'),
('TG1024','Wathsala Sathsarani','071-8668963','A001','T002','D001','TMS1233'),
('TG1024','Wathsala Sathsarani','071-8668963','A001','T002','D001','ENG1212'),

('TG0920','Mahela Prabodha','072-4698254','A001','T002','D001','ICT1212'),
('TG0920','Mahela Prabodha','072-4698254','A001','T002','D001','ICT1222'),
('TG0920','Mahela Prabodha','072-4698254','A001','T002','D001','ICT1233'),
('TG0920','Mahela Prabodha','072-4698254','A001','T002','D001','ICT1242'),
('TG0920','Mahela Prabodha','072-4698254','A001','T002','D001','ICT1253'),
('TG0920','Mahela Prabodha','072-4698254','A001','T002','D001','TCS1212'),
('TG0920','Mahela Prabodha','072-4698254','A001','T002','D001','TMS1233'),
('TG0920','Mahela Prabodha','072-4698254','A001','T002','D001','ENG1212'),

('TG0918','Dinuka Adithya','072-7391468','A001','T002','D001','ICT1212'),
('TG0918','Dinuka Adithya','072-7391468','A001','T002','D001','ICT1222'),
('TG0918','Dinuka Adithya','072-7391468','A001','T002','D001','ICT1233'),
('TG0918','Dinuka Adithya','072-7391468','A001','T002','D001','ICT1242'),
('TG0918','Dinuka Adithya','072-7391468','A001','T002','D001','ICT1253'),
('TG0918','Dinuka Adithya','072-7391468','A001','T002','D001','TCS1212'),
('TG0918','Dinuka Adithya','072-7391468','A001','T002','D001','TMS1233'),
('TG0918','Dinuka Adithya','072-7391468','A001','T002','D001','ENG1212'),

('TG0980','Supun Lokugamage','076-2864721','A001','T002','D001','ICT1212'),
('TG0980','Supun Lokugamage','076-2864721','A001','T002','D001','ICT1222'),
('TG0980','Supun Lokugamage','076-2864721','A001','T002','D001','ICT1233'),
('TG0980','Supun Lokugamage','076-2864721','A001','T002','D001','ICT1242'),
('TG0980','Supun Lokugamage','076-2864721','A001','T002','D001','ICT1253'),
('TG0980','Supun Lokugamage','076-2864721','A001','T002','D001','TCS1212'),
('TG0980','Supun Lokugamage','076-2864721','A001','T002','D001','TMS1233'),
('TG0980','Supun Lokugamage','076-2864721','A001','T002','D001','ENG1212'),

('TG0833','Ishan Adhikari','075-2252782','A001','T002','D001','ICT1212'),
('TG0833','Ishan Adhikari','075-2252782','A001','T002','D001','ICT1222'),
('TG0833','Ishan Adhikari','075-2252782','A001','T002','D001','ICT1233'),
('TG0833','Ishan Adhikari','075-2252782','A001','T002','D001','ICT1242'),
('TG0833','Ishan Adhikari','075-2252782','A001','T002','D001','ICT1253'),
('TG0833','Ishan Adhikari','075-2252782','A001','T002','D001','TCS1212'),
('TG0833','Ishan Adhikari','075-2252782','A001','T002','D001','TMS1233'),
('TG0833','Ishan Adhikari','075-2252782','A001','T002','D001','ENG1212'),

('TG0810','Nuwan Silva','074-8649722','A001','T002','D001','ICT1212'),
('TG0810','Nuwan Silva','074-8649722','A001','T002','D001','ICT1222'),
('TG0810','Nuwan Silva','074-8649722','A001','T002','D001','ICT1233'),
('TG0810','Nuwan Silva','074-8649722','A001','T002','D001','ICT1242'),
('TG0810','Nuwan Silva','074-8649722','A001','T002','D001','ICT1253'),
('TG0810','Nuwan Silva','074-8649722','A001','T002','D001','TCS1212'),
('TG0810','Nuwan Silva','074-8649722','A001','T002','D001','TMS1233'),
('TG0810','Nuwan Silva','074-8649722','A001','T002','D001','ENG1212'),

('TG0853','Saman Kumara','071-5623199','A001','T002','D001','ICT1212'),
('TG0853','Saman Kumara','071-5623199','A001','T002','D001','ICT1222'),
('TG0853','Saman Kumara','071-5623199','A001','T002','D001','ICT1233'),
('TG0853','Saman Kumara','071-5623199','A001','T002','D001','ICT1242'),
('TG0853','Saman Kumara','071-5623199','A001','T002','D001','ICT1253'),
('TG0853','Saman Kumara','071-5623199','A001','T002','D001','TCS1212'),
('TG0853','Saman Kumara','071-5623199','A001','T002','D001','TMS1233'),
('TG0853','Saman Kumara','071-5623199','A001','T002','D001','ENG1212')
;


/*Insert Data For Courses_lecture  table*/
INSERT INTO Courses_lecture 
VALUES
    ('ICT1212', 'L003'),
    ('ICT1222', 'L003'),
    ('ICT1233', 'L004'),
    ('ICT1242', 'L005'),
    ('ICT1253', 'L006'),
    ('TCS1212', 'L007'),
    ('TMS1233', 'L008'),
    ('ENG1212', 'L009');

                                                          ---------/*Finish the Data insert FOR All Table*/------

                                                            -------/*Add Foreign Key For All Table*/--------                                                          
    ALTER TABLE Course
    ADD FOREIGN KEY (Department_id) REFERENCES Department(Department_id);

    ALTER TABLE Student
	ADD FOREIGN KEY (Admin_id) REFERENCES Admin(Admin_id),
	ADD FOREIGN KEY (Officer_id) REFERENCES Technical_officer(Officer_id),
	ADD FOREIGN KEY (Dean_id) REFERENCES Dean(Dean_id),
	ADD FOREIGN KEY (Course_id) REFERENCES Course(Course_id);

    ALTER TABLE Courses_lecture
	ADD FOREIGN KEY (Course_id) REFERENCES Course(Course_id),
	ADD FOREIGN KEY (Lecture_id) REFERENCES Lecture(Lecture_id);
                                                    --------/*Finish the Add Foreign key for All Table*/-------

    *****************************************************************

                                                            -------/*Create Query*/---------
1.Select all students and their courses:
    SELECT s.Student_id, s.Name, c.C_name
    FROM Student s
    JOIN Course c ON s.Course_id = c.Course_id;

2.Select all courses in the ICT department:
    SELECT *
    FROM Course
    WHERE Department_id = 'ICT002';

3.Select all students who are enrolled in a practical course:
    SELECT s.Student_id, s.Name, c.C_name
    FROM Student s
    JOIN Course c ON s.Course_id = c.Course_id
    WHERE c.Theory_OR_Practical = 'Practical';

4.Count the number of students in each course:
    SELECT c.C_name, COUNT(*) AS num_students
    FROM Student s
    JOIN Course c ON s.Course_id = c.Course_id
    GROUP BY c.C_name;

5.Find the courses taught by a specific lecture (e.g., Mr.P.H.P.Nuwan Laksiri):
    SELECT c.C_name
    FROM Course c
    WHERE c.Lecture_in_charge = 'Mr.P.H.P.Nuwan Laksiri';

6.Select all students along with their contact numbers and the name of the department they are in:
    SELECT s.Student_id, s.Name, s.Contact_no, d.Department_name
    FROM Student s
    JOIN Course c ON s.Course_id = c.Course_id
    JOIN Department d ON c.Department_id = d.Department_id;

7.Find the lectures teaching a specific course (e.g., ICT1212):
    SELECT l.Lecture_name
    FROM Courses_lecture cl
    JOIN Lecture l ON cl.Lecture_id = l.Lecture_id
    WHERE cl.Course_id = 'ICT1212';

8.Find all students and their courses, ordered by the students name:
    SELECT s.Student_id, s.Name, c.C_name
    FROM Student s
    JOIN Course c ON s.Course_id = c.Course_id
    ORDER BY s.Name;

9.Select the course with the most students:
    SELECT c.C_name, COUNT(*) AS num_students
    FROM Student s
    JOIN Course c ON s.Course_id = c.Course_id
    GROUP BY c.C_name
    ORDER BY num_students DESC
    LIMIT 1;

10.Select the student with a specific ID (e.g., TG1010):
    SELECT *
    FROM Student
    WHERE Student_id = 'TG1010';


/**********************************************************************************************************************************************************************************************/

CREATE TABLE Medical(
    Student_id VARCHAR(10),
    Course_id VARCHAR(10),
    Count_of_Medical INT(1),
    PRIMARY KEY (Student_id,Course_id)
);

INSERT INTO  Medical
VALUES
("TG1010","ICT1222",0),
("TG1010","ICT1212",0),
("TG1010","ICT1233",0),
("TG1010","ICT1242",1),
("TG1010","ICT1253",0),
("TG1010","TCS1212",2),
("TG1010","TMS1233",0),
("TG1010","ENG1212",1),

("TG1011","ICT1212",1),
("TG1011","ICT1222",0),
("TG1011","ICT1233",2),
("TG1011","ICT1242",2),
("TG1011","ICT1253",0),
("TG1011","TCS1212",0),
("TG1011","TMS1233",1),
("TG1011","ENG1212",2),

("TG1012","ICT1212",1),
("TG1012","ICT1222",0),
("TG1012","ICT1233",0),
("TG1012","ICT1242",1),
("TG1012","ICT1253",1),
("TG1012","TCS1212",0),
("TG1012","TMS1233",1),
("TG1012","ENG1212",2),

("TG1013","ICT1212",0),
("TG1013","ICT1222",0),
("TG1013","ICT1233",0),
("TG1013","ICT1242",0),
("TG1013","ICT1253",0),
("TG1013","TCS1212",0),
("TG1013","TMS1233",0),
("TG1013","ENG1212",0),
 
("TG1014","ICT1212",0),
("TG1014","ICT1222",0),
("TG1014","ICT1233",2),
("TG1014","ICT1242",1),
("TG1014","ICT1253",0),
("TG1014","TCS1212",0),
("TG1014","TMS1233",1),
("TG1014","ENG1212",2),

("TG1015","ICT1212",0),
("TG1015","ICT1222",1),
("TG1015","ICT1233",1),
("TG1015","ICT1242",1),
("TG1015","ICT1253",1),
("TG1015","TCS1212",2),
("TG1015","TMS1233",0),
("TG1015","ENG1212",2),

("TG1016","ICT1212",0),
("TG1016","ICT1222",0),
("TG1016","ICT1233",1),
("TG1016","ICT1242",2),
("TG1016","ICT1253",0),
("TG1016","TCS1212",0),
("TG1016","TMS1233",0),
("TG1016","ENG1212",2),
 
("TG1017","ICT1212",0),
("TG1017","ICT1222",0),
("TG1017","ICT1233",0),
("TG1017","ICT1242",0),
("TG1017","ICT1253",0),
("TG1017","TCS1212",1),
("TG1017","TMS1233",0),
("TG1017","ENG1212",2),

("TG1018","ICT1212",0),
("TG1018","ICT1222",1),
("TG1018","ICT1233",0),
("TG1018","ICT1242",0),
("TG1018","ICT1253",1),
("TG1018","TCS1212",0),
("TG1018","TMS1233",0),
("TG1018","ENG1212",3),
   
("TG1019","ICT1212",0),
("TG1019","ICT1222",0),
("TG1019","ICT1233",0),
("TG1019","ICT1242",2),
("TG1019","ICT1253",0),
("TG1019","TCS1212",0),
("TG1019","TMS1233",0),
("TG1019","ENG1212",0),

("TG1020","ICT1212",0),
("TG1020","ICT1222",0),
("TG1020","ICT1233",0),
("TG1020","ICT1242",0),
("TG1020","ICT1253",1),
("TG1020","TCS1212",0),
("TG1020","TMS1233",1),
("TG1020","ENG1212",2),

("TG1021","ICT1212",0),
("TG1021","ICT1222",1),
("TG1021","ICT1233",0),
("TG1021","ICT1242",0),
("TG1021","ICT1253",1),
("TG1021","TCS1212",0),
("TG1021","TMS1233",3),
("TG1021","ENG1212",3),
 
("TG1022","ICT1212",0),
("TG1022","ICT1222",0),
("TG1022","ICT1233",0),
("TG1022","ICT1242",1),
("TG1022","ICT1253",0),
("TG1022","TCS1212",1),
("TG1022","TMS1233",0),
("TG1022","ENG1212",1),

("TG1023","ICT1212",0),
("TG1023","ICT1222",0),
("TG1023","ICT1233",0),
("TG1023","ICT1242",0),
("TG1023","ICT1253",1),
("TG1023","TCS1212",0),
("TG1023","TMS1233",0),
("TG1023","ENG1212",2),
   
("TG1024","ICT1212",0),
("TG1024","ICT1222",0),
("TG1024","ICT1233",1),
("TG1024","ICT1242",0),
("TG1024","ICT1253",0),
("TG1024","TCS1212",0),
("TG1024","TMS1233",0),
("TG1024","ENG1212",1),

("TG0920","ICT1212",0),
("TG0920","ICT1222",0),
("TG0920","ICT1233",0),
("TG0920","ICT1242",0),
("TG0920","ICT1253",0),
("TG0920","TCS1212",0),
("TG0920","TMS1233",0),
("TG0920","ENG1212",0),

("TG0918","ICT1212",0),
("TG0918","ICT1222",0),
("TG0918","ICT1233",0),
("TG0918","ICT1242",0),
("TG0918","ICT1253",0),
("TG0918","TCS1212",0),
("TG0918","TMS1233",0),
("TG0918","ENG1212",0),

("TG0980","ICT1212",0),
("TG0980","ICT1222",0),
("TG0980","ICT1233",0),
("TG0980","ICT1242",0),
("TG0980","ICT1253",0),
("TG0980","TCS1212",0),
("TG0980","TMS1233",0),
("TG0980","ENG1212",0),

("TG0833","ICT1212",0),
("TG0833","ICT1222",0),
("TG0833","ICT1233",0),
("TG0833","ICT1242",0),
("TG0833","ICT1253",0),
("TG0833","TCS1212",0),
("TG0833","TMS1233",0),
("TG0833","ENG1212",0),

("TG0810","ICT1212",0),
("TG0810","ICT1222",0),
("TG0810","ICT1233",0),
("TG0810","ICT1242",0),
("TG0810","ICT1253",0),
("TG0810","TCS1212",0),
("TG0810","TMS1233",0),
("TG0810","ENG1212",0),

("TG0853","ICT1212",0),
("TG0853","ICT1222",0),
("TG0853","ICT1233",0),
("TG0853","ICT1242",0),
("TG0853","ICT1253",0),
("TG0853","TCS1212",0),
("TG0853","TMS1233",0),
("TG0853","ENG1212",0)
;
