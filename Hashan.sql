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
('TG1010','Ishani Kawshalya','071-1245789','A001','')
('TG1011','Asith Indipa','074-1295989','','','','',''),
('TG1012','Anuhas Rajapaksha','071-3225729','','','','',''),
('TG1013','Hashan Madhuranga','070-2545725','','','','',''),
('TG1014','Nipuni Bandara','077-2245588','','','','',''),
('TG1015','Chathuranga Nipun','076-9842637','','','','',''),
('TG1016','Dhanushka Udayantha','071-5142725','','','','',''),
('TG1017','Charuka Bandara','072-5372982','','','','',''),
('TG1018','Tharushika Himansi','078-8642384','','','','',''),
('TG1019','Ravindu Harshana','076-2346821','','','','',''),
('TG0920','Mahela Prabodha','072-4698254','','','','',''),
('TG0918','Dinuka Adithya','072-7391468','','','','',''),
('TG0980','Supun Lokugamage','076-2864721','','','','',''),
('TG0833','Ishan Adhikari','075-2252782','','','','',''),
('TG0810','Nuwan Silva','074-8649722','','','','',''),
('TG0853','Saman Kumara','071-5623199','','','','','')
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
('S0001','Thushara Ekanayake','110000.00','NULL'),
('S0002',Ruwan Perera','180000.00','NULL'),
('S0003','Sunil Premasiri','90000.00','ET001'),
('S0004','Ishan Rangajeewa','90000.00','ET001'),
('S0005','Malshani Ekanayake','90000.00','ET001'),
('S0006','Sewwandi Nisansala','90000.00','ET001'),
('S0007','Amarasiri Peeris','90000.00','ICT002'),
('S0008','Gayani Erandathi','90000.00','ICT002'),
('S0009','Hirusha Dilmin','90000.00','ICT002'),
('S0010','Tharuni Imesha','90000.00','ICT002'),
('S0011','Nimantha Sampath','90000.00','BST003'),
('S0012','Madhubashini Bandara','90000.00','BST003'),
('S0013','Nalani Jayasooriya','90000.00','BST003'),
('S0014','Kasun Indipa','90000.00','BST003'),
('S0015','Nilanthi Kumari','90000.00','MD004'),
('S0016','Nethmi Herath','90000.00','MD004'),
('S0017','Chathuranga Adhikari','90000.00','MD004'),
('S0018','Ruwangi Ekanayake','90000.00','MD004'),
('S0019','Nipuni Ayodya','90000.00','MD004'),
('S0020','Sampath Kumara','60000.00','ET001'),
('S0021','Sanjaya Kavishka','60000.00','ICT002'),
('S0022','Nirmal Silva','60000.00','BST003'),
('S0023','Pethum Madhusanka','60000.00','MD004')
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