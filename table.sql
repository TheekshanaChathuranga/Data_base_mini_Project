create database LMS;

use lms;

create table Technical_officer(
    Officer_id varchar(10),
    Contact_no varchar(11),
    Staff_id varchar(10),
    primary key(Officer_id),
    foreign key(Staff_id) references Staff(Staff_id)
);

create table Department(
    Department_id varchar(10),
    Name varchar(30),
    primary key(Department_id)
);

create table Attendence(
    Student_id varchar(10),
    Course_id varchar(10),
    Attendence integer(3)
    foreign key(Student_id) references Student(Student_id),
    foreign key(Course_id) references Course(Course_id)
);

create table Mark(
    Student_id varchar(10),
    Course_id varchar(10),
    foreign key(Student_id) references Student(Student_id),
    foreign key(Course_id) references Course(Course_id)
);

create table Quiz_mark(
    Student_id varchar(10),
    Grade varchar(3),
    Q_mark integer(3),
    Course_id varchar(10),
    foreign key(Student_id) references Student(Student_id),
    foreign key(Course_id) references Course(Course_id)
);

create table Assesment_mark(
    Student_id varchar(10),
    Grade varchar(3),
    A_mark integer(3),
    Course_id varchar(10),
    foreign key(Student_id) references Student(Student_id),
    foreign key(Course_id) references Course(Course_id)
);

create table Mid_mark(
    Student_id varchar(10),
    Grade varchar(3),
    M_mark integer(3),
    Course_id varchar(10),
    foreign key(Student_id) references Student(Student_id),
    foreign key(Course_id) references Course(Course_id)
);

create table Final_mark(
    Student_id varchar(10),
    Grade varchar(3),
    F_mark integer(3),
    Course_id varchar(10),
    foreign key(Student_id) references Student(Student_id),
    foreign key(Course_id) references Course(Course_id)
);
