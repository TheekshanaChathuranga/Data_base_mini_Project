CREATE TABLE Course(
    Course_id VARCHAR(10),
    Department_id VARCHAR(10),
    C_name VARCHAR(30),
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
    Lecture_id VARCHAR(10),
    Dean_id VARCHAR(10),
    Course_id VARCHAR(10),
    PRIMARY KEY (Student_id)
    );

INSERT INTO student
VALUES
('TG1010','Ishani Kawshalya','071-1245789','A001','','','D001')
('TG1011','Asith Indipa','074-1295989','A001','','','D001'),
('TG1012','Anuhas Rajapaksha','071-3225729','A001','','','D001'),
('TG1013','Hashan Madhuranga','070-2545725','A001','','','D001'),
('TG1014','Nipuni Bandara','077-2245588','A001','','','D001'),
('TG1015','Chathuranga Nipun','076-9842637','A001','','','D001'),
('TG1016','Dhanushka Udayantha','071-5142725','A001','','','D001'),
('TG1017','Charuka Bandara','072-5372982','A001','','','D001'),
('TG1018','Tharushika Himansi','078-8642384','A001','','','D001'),
('TG1019','Ravindu Harshana','076-2346821','A001','','','D001'),
('TG1020','Harshi Gamage','074-9721456','A001','','','D001'),
('TG1021','Nipuni Kumari','072-3131654','A001','','','D001'),
('TG1022','Wasantha Kumara','077-8564923','A001','','','D001'),
('TG1023','Sanath Gamage','076-5588469','A001','','','D001'),
('TG1024','Wathsala Sathsarani','071-8668963','A001','','','D001'),
('TG0920','Mahela Prabodha','072-4698254','A001','','','D001'),
('TG0918','Dinuka Adithya','072-7391468','A001','','','D001'),
('TG0980','Supun Lokugamage','076-2864721','A001','','','D001'),
('TG0833','Ishan Adhikari','075-2252782','A001','','','D001'),
('TG0810','Nuwan Silva','074-8649722','A001','','','D001'),
('TG0853','Saman Kumara','071-5623199','A001','','','D001')
;

INSERT INTO DEPARTMENT
VALUES
('ET001','Engineering Technology'),
('ICT002','Information and Communication Technology'),
('BST003','Biosystem Technology'),
('MD004','Multi Disciplinary')
;


INSERT INTO staff
VALUES
('S0001','Mr.Thushara Ekanayake','110000.00','NULL'),
('S0002',Mr.Ruwan Perera','180000.00','NULL'),
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
('L017','S0019','075-0189256')
;

INSERT INTO Technical_officer
VALUES
('T001','S0020','070-5467829'),
('T002','S0021','071-2354678'),
('T004','S0022','075-4562452'),
('T005','S0023','071-5465658')
;
////////////////////////////////////////////////////////

INSERT INTO Attendance
VALUES
('TG1010','ICT1212',100),
('TG1010','ICT1222',80),
('TG1010','ICT1233',87),
('TG1010','ICT1242',92),
('TG1010','ICT1253',79),
('TG1010','TCS1212',84),
('TG1010','TMS1233',88),
('TG1010','ENG1212',72),

('TG1011','ICT1212',95),
('TG1011','ICT1222',87),
('TG1011','ICT1233',98),
('TG1011','ICT1242',92),
('TG1011','ICT1253',86),
('TG1011','TCS1212',84),
('TG1011','TMS1233',96),
('TG1011','ENG1212',78),

('TG1012','ICT1212',90),
('TG1012','ICT1222',86),
('TG1012','ICT1233',84),
('TG1012','ICT1242',92),
('TG1012','ICT1253',87),
('TG1012','TCS1212',83),
('TG1012','TMS1233',80),
('TG1012','ENG1212',71),

('TG1013','ICT1212',84),
('TG1013','ICT1222',80),
('TG1013','ICT1233',92),
('TG1013','ICT1242',84),
('TG1013','ICT1253',82),
('TG1013','TCS1212',91),
('TG1013','TMS1233',85),
('TG1013','ENG1212',70),

('TG1014','ICT1212',88),
('TG1014','ICT1222',83),
('TG1014','ICT1233',79),
('TG1014','ICT1242',85),
('TG1014','ICT1253',92),
('TG1014','TCS1212',85),
('TG1014','TMS1233',80),
('TG1014','ENG1212',70),

('TG1015','ICT1212',75),
('TG1015','ICT1222',80),
('TG1015','ICT1233',79),
('TG1015','ICT1242',74),
('TG1015','ICT1253',80),
('TG1015','TCS1212',79),
('TG1015','TMS1233',89),
('TG1015','ENG1212',70),

('TG1016','ICT1212',81),
('TG1016','ICT1222',83),
('TG1016','ICT1233',69),
('TG1016','ICT1242',91),
('TG1016','ICT1253',85),
('TG1016','TCS1212',92),
('TG1016','TMS1233',78),
('TG1016','ENG1212',70),

('TG1017','ICT1212',82),
('TG1017','ICT1222',64),
('TG1017','ICT1233',82),
('TG1017','ICT1242',80),
('TG1017','ICT1253',79),
('TG1017','TCS1212',90),
('TG1017','TMS1233',85),
('TG1017','ENG1212',60),

('TG1018','ICT1212',79),
('TG1018','ICT1222',62),
('TG1018','ICT1233',70),
('TG1018','ICT1242',80),
('TG1018','ICT1253',65),
('TG1018','TCS1212',75),
('TG1018','TMS1233',86),
('TG1018','ENG1212',69),

('TG1019','ICT1212',75),
('TG1019','ICT1222',85),
('TG1019','ICT1233',90),
('TG1019','ICT1242',82),
('TG1019','ICT1253',78),
('TG1019','TCS1212',68),
('TG1019','TMS1233',47),
('TG1019','ENG1212',20),

('TG1020','ICT1212',88),
('TG1020','ICT1222',78),
('TG1020','ICT1233',82),
('TG1020','ICT1242',79),
('TG1020','ICT1253',64),
('TG1020','TCS1212',75),
('TG1020','TMS1233',90),
('TG1020','ENG1212',45),

('TG1021','ICT1212',74),
('TG1021','ICT1222',73),
('TG1021','ICT1233',80),
('TG1021','ICT1242',46),
('TG1021','ICT1253',79),
('TG1021','TCS1212',88),
('TG1021','TMS1233',76),
('TG1021','ENG1212',23),

('TG1022','ICT1212',42),
('TG1022','ICT1222',50),
('TG1022','ICT1233',62),
('TG1022','ICT1242',58),
('TG1022','ICT1253',70),
('TG1022','TCS1212',66),
('TG1022','TMS1233',71),
('TG1022','ENG1212',22),

('TG1023','ICT1212',88),
('TG1023','ICT1222',78),
('TG1023','ICT1233',56),
('TG1023','ICT1242',66),
('TG1023','ICT1253',78),
('TG1023','TCS1212',88),
('TG1023','TMS1233',52),
('TG1023','ENG1212',10),

('TG1024','ICT1212',45),
('TG1024','ICT1222',78),
('TG1024','ICT1233',56),
('TG1024','ICT1242',57),
('TG1024','ICT1253',45),
('TG1024','TCS1212',87),
('TG1024','TMS1233',49),
('TG1024','ENG1212',10),

('TG0918','ICT1212','NULL'),
('TG0918','ICT1222','NULL'),
('TG0918','ICT1233','NULL'),
('TG0918','ICT1242','NULL'),
('TG0918','ICT1253','NULL'),
('TG0918','TCS1212','NULL'),
('TG0918','TMS1233','NULL'),
('TG0918','ENG1212','NULL'),

('TG0920','ICT1212','NULL'),
('TG0920','ICT1222','NULL'),
('TG0920','ICT1233','NULL'),
('TG0920','ICT1242','NULL'),
('TG0920','ICT1253','NULL'),
('TG0920','TCS1212','NULL'),
('TG0920','TMS1233','NULL'),
('TG0920','ENG1212','NULL'),

('TG0980','ICT1212','NULL'),
('TG0980','ICT1222','NULL'),
('TG0980','ICT1233','NULL'),
('TG0980','ICT1242','NULL'),
('TG0980','ICT1253','NULL'),
('TG0980','TCS1212','NULL'),
('TG0980','TMS1233','NULL'),
('TG0980','ENG1212','NULL'),

('TG0810','ICT1212','NULL'),
('TG0810','ICT1222','NULL'),
('TG0810','ICT1233','NULL'),
('TG0810','ICT1242','NULL'),
('TG0810','ICT1253','NULL'),
('TG0810','TCS1212','NULL'),
('TG0810','TMS1233','NULL'),
('TG0810','ENG1212','NULL'),

('TG0833','ICT1212','NULL'),
('TG0833','ICT1222','NULL'),
('TG0833','ICT1233','NULL'),
('TG0833','ICT1242','NULL'),
('TG0833','ICT1253','NULL'),
('TG0833','TCS1212','NULL'),
('TG0833','TMS1233','NULL'),
('TG0833','ENG1212','NULL'),

('TG0853','ICT1212','NULL'),
('TG0853','ICT1222','NULL'),
('TG0853','ICT1233','NULL'),
('TG0853','ICT1242','NULL'),
('TG0853','ICT1253','NULL'),
('TG0853','TCS1212','NULL'),
('TG0853','TMS1233','NULL'),
('TG0853','ENG1212','NULL')
;

INSERT INTO mark
VALUES
('TG1010','ICT1212'),
('TG1010','ICT1222'),
('TG1010','ICT1233'),
('TG1010','ICT1242'),
('TG1010','ICT1253'),
('TG1010','TCS1212'),
('TG1010','TMS1233'),
('TG1010','ENG1212'),

('TG1011','ICT1212'),
('TG1011','ICT1222'),
('TG1011','ICT1233'),
('TG1011','ICT1242'),
('TG1011','ICT1253'),
('TG1011','TCS1212'),
('TG1011','TMS1233'),
('TG1011','ENG1212'),

('TG1012','ICT1212'),
('TG1012','ICT1222'),
('TG1012','ICT1233'),
('TG1012','ICT1242'),
('TG1012','ICT1253'),
('TG1012','TCS1212'),
('TG1012','TMS1233'),
('TG1012','ENG1212'),

('TG1013','ICT1212'),
('TG1013','ICT1222'),
('TG1013','ICT1233'),
('TG1013','ICT1242'),
('TG1013','ICT1253'),
('TG1013','TCS1212'),
('TG1013','TMS1233'),
('TG1013','ENG1212'),
('TG1014','ICT1212'),
('TG1014','ICT1222'),
('TG1014','ICT1233'),
('TG1014','ICT1242'),
('TG1014','ICT1253'),
('TG1014','TCS1212'),
('TG1014','TMS1233'),
('TG1014','ENG1212',),

('TG1015','ICT1212'),
('TG1015','ICT1222'),
('TG1015','ICT1233'),
('TG1015','ICT1242'),
('TG1015','ICT1253'),
('TG1015','TCS1212'),
('TG1015','TMS1233'),
('TG1015','ENG1212'),

('TG1016','ICT1212'),
('TG1016','ICT1222'),
('TG1016','ICT1233'),
('TG1016','ICT1242'),
('TG1016','ICT1253'),
('TG1016','TCS1212'),
('TG1016','TMS1233'),
('TG1016','ENG1212'),

('TG1017','ICT1212'),
('TG1017','ICT1222'),
('TG1017','ICT1233'),
('TG1017','ICT1242'),
('TG1017','ICT1253'),
('TG1017','TCS1212'),
('TG1017','TMS1233'),
('TG1017','ENG1212'),

('TG1018','ICT1212'),
('TG1018','ICT1222'),
('TG1018','ICT1233'),
('TG1018','ICT1242'),
('TG1018','ICT1253'),
('TG1018','TCS1212'),
('TG1018','TMS1233'),
('TG1018','ENG1212'),

('TG1019','ICT1212'),
('TG1019','ICT1222'),
('TG1019','ICT1233'),
('TG1019','ICT1242'),
('TG1019','ICT1253'),
('TG1019','TCS1212'),
('TG1019','TMS1233'),
('TG1019','ENG1212'),

('TG1020','ICT1212'),
('TG1020','ICT1222'),
('TG1020','ICT1233'),
('TG1020','ICT1242'),
('TG1020','ICT1253'),
('TG1020','TCS1212'),
('TG1020','TMS1233'),
('TG1020','ENG1212'),

('TG1021','ICT1212'),
('TG1021','ICT1222'),
('TG1021','ICT1233'),
('TG1021','ICT1242'),
('TG1021','ICT1253'),
('TG1021','TCS1212'),
('TG1021','TMS1233'),
('TG1021','ENG1212'),

('TG1022','ICT1212'),
('TG1022','ICT1222'),
('TG1022','ICT1233'),
('TG1022','ICT1242'),
('TG1022','ICT1253'),
('TG1022','TCS1212'),
('TG1022','TMS1233'),
('TG1022','ENG1212'),

('TG1023','ICT1212'),
('TG1023','ICT1222'),
('TG1023','ICT1233'),
('TG1023','ICT1242'),
('TG1023','ICT1253'),
('TG1023','TCS1212'),
('TG1023','TMS1233'),
('TG1023','ENG1212'),

('TG1024','ICT1212'),
('TG1024','ICT1222'),
('TG1024','ICT1233'),
('TG1024','ICT1242'),
('TG1024','ICT1253'),
('TG1024','TCS1212'),
('TG1024','TMS1233'),
('TG1024','ENG1212'),

('TG0918','ICT1212'),
('TG0918','ICT1222'),
('TG0918','ICT1233'),
('TG0918','ICT1242'),
('TG0918','ICT1253'),
('TG0918','TCS1212'),
('TG0918','TMS1233'),
('TG0918','ENG1212'),

('TG0920','ICT1212'),
('TG0920','ICT1222'),
('TG0920','ICT1233'),
('TG0920','ICT1242'),
('TG0920','ICT1253'),
('TG0920','TCS1212'),
('TG0920','TMS1233'),
('TG0920','ENG1212'),

('TG0980','ICT1212'),
('TG0980','ICT1222'),
('TG0980','ICT1233'),
('TG0980','ICT1242'),
('TG0980','ICT1253'),
('TG0980','TCS1212'),
('TG0980','TMS1233'),
('TG0980','ENG1212'),

('TG0810','ICT1212'),
('TG0810','ICT1222'),
('TG0810','ICT1233'),
('TG0810','ICT1242'),
('TG0810','ICT1253'),
('TG0810','TCS1212'),
('TG0810','TMS1233'),
('TG0810','ENG1212'),

('TG0833','ICT1212'),
('TG0833','ICT1222'),
('TG0833','ICT1233'),
('TG0833','ICT1242',,
('TG0833','ICT1253'),
('TG0833','TCS1212'),
('TG0833','TMS1233'),
('TG0833','ENG1212'),

('TG0853','ICT1212'),
('TG0853','ICT1222'),
('TG0853','ICT1233'),
('TG0853','ICT1242'),
('TG0853','ICT1253'),
('TG0853','TCS1212'),
('TG0853','TMS1233'),
('TG0853','ENG1212')
;

