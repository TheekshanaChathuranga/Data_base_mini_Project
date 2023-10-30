CREATE TABLE Course(
    Course_id VARCHAR(10),
    Department_id VARCHAR(10),
    C_name VARCHAR(50),
    Lecture_in_charge VARCHAR(30),
    Theory_OR_Practical VARCHAR(10),
    CONSTRAINT Course PRIMARY KEY (Course_id,Department_id)
    );

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


CREATE TABLE Courses_lecture(
	Course_id VARCHAR(10),
	Lecture_id VARCHAR(10),
	PRIMARY KEY (Course_id,Lecture_id)
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
('ENG1212','MD004','English II','Ms.Hiranya Amarasinghe ','Theory')
;

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