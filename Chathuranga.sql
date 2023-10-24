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