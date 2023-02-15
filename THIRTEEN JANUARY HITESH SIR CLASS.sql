CREATE DATABASE BOOK;
USE BOOK;
DROP TABLE Student1
CREATE TABLE Student1
(
Stud_id INT,
Stud_name VARCHAR(25),
Stud_Country VARCHAR(25)
);
INSERT INTO
 Student1(Stud_id,Stud_name,Stud_Country)
 VALUES
(1,'SUMAN','India'),
(2,'AHANA','Canada'),
(3,'Heer','India'),
(5,'Aisha','PARIS');

SELECT * FROM Student1

CREATE TABLE Colleges123
(
College_id INT,
College_name VARCHAR(25),
College_dept VARCHAR(25),
College_library VARCHAR(25),
College_labs VARCHAR (25),
College_parking VARCHAR(25)
);

INSERT INTO
 Colleges123(College_id,College_name,College_dept,College_library,College_labs,College_parking)
 VALUES
(1,'Poona College','Physics','Girls library','Physics lab','Two Wheeler'),
(2,'Sinhgad College','BBA','Girls library','microbiology lab','Two Wheeler'),
(3,'Trinity College','BCS','Girls library','maths lab','Two Wheeler'),
(4,'Chaitaniya College','Chemistry','Girls library','physics lab','Two Wheeler'),
(5,'FG College','Maths','Girls library','Physics lab','Four Wheeler'),
(6,'Modern College','CS','Girls library','Biology lab','Two Wheeler'),
(7,'DY Patil College','Physics','Girls library','Zoology lab','Two Wheeler'),
(8,'Christ College','Biology','Girls library','Physics lab','Two Wheeler');
SELECT * FROM Student1
SELECT * FROM Colleges123

SELECT
Student1.Stud_id,Student1.Stud_name,Colleges123.College_name
FROM
Student1
LEFT JOIN
Colleges123
ON
Student1.Stud_id=Colleges123.College_id;

SELECT Stud_id,College_id
FROM
Student1 
FULL JOIN
Colleges123
ON
Student1.Stud_id = Colleges123.College_id

 SELECT * FROM Student1 NATURAL JOIN Colleges123;
 
 CREATE TABLE LAPTOP
(
Customer_id INT,
Customer_name VARCHAR(25),
Customer_Country VARCHAR(25)
);
INSERT INTO
 LAPTOP(Customer_id,Customer_name,Customer_Country)
 VALUES
(1,'SUMAN','India'),
(2,'AHANA','Canada'),
(3,'Heer','India'),
(5,'Aisha','PARIS');


CREATE TABLE ORDERS
(
Customer_id INT,
Customer_name VARCHAR(25),
Customer_Country VARCHAR(25)
);
INSERT INTO
 ORDERS(Customer_id,Customer_name,Customer_Country)
 VALUES
(1,'SUMAN','India'),
(2,'AHANA','Canada'),
(3,'Heer','India'),
(5,'Aisha','PARIS');

 SELECT 
 Student1.Stud_id,Student1.Stud_name,Colleges123.College_labs,Colleges123.College_dept
 FROM
 Student1
 RIGHT JOIN
 Colleges123
 ON
Student1.Stud_id = Colleges123.College_id;
----------------- WITH TABLE ALIASES--------------
SELECT 
 Stud_id,College_labs
 FROM
 Student1 AS S_1
 RIGHT JOIN
 Colleges123 AS C_1
 ON
Student1.Stud_id = Colleges123.College_id;

----------------- WITH COLUMN ALIASES--------------
SELECT
Student1.Stud_id,Student1.Stud_name,Colleges123.College_labs,Colleges123.College_dept
FROM
Student1 AS T1
RIGHT JOIN
Colleges123 AS T2
ON
Student1.Stud_id = Colleges123.College_id;



-------------------- CROSS JOIN---------------

SELECT * FROM table1 CROSS JOIN table2;