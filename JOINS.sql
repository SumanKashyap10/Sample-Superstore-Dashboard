CREATE DATABASE CALIFORNIA1;
USE CALIFORNIA1;
CREATE TABLE INSTITUTE
(
Stud_id INT NOT NULL PRIMARY KEY,
Stud_name VARCHAR(25),
Stud_Country VARCHAR(25)
);
INSERT INTO
 INSTITUTE(Stud_id,Stud_name,Stud_Country)
 VALUES
(1,'SUMAN','India'),
(2,'AHANA','Canada'),
(3,'Heer','India'),
(5,'Aisha','PARIS');
SELECT *  FROM INSTITUTE
CREATE TABLE College
(
College_id INT NOT NULL PRIMARY KEY,
College_name VARCHAR(25),
College_dept VARCHAR(25),
College_library VARCHAR(25),
College_labs VARCHAR (25),
College_parking VARCHAR(25)
);
INSERT INTO
 College(College_id,College_name,College_dept,College_library,College_labs,College_parking)
 VALUES
(1,'Poona College','Physics','Girls library','Physics lab','Two Wheeler'),
(2,'Sinhgad College','BBA','Girls library','microbiology lab','Two Wheeler'),
(3,'Trinity College','BCS','Girls library','maths lab','Two Wheeler'),
(4,'Chaitaniya College','Chemistry','Girls library','physics lab','Two Wheeler'),
(5,'FG College','Maths','Girls library','Physics lab','Four Wheeler'),
(6,'Modern College','CS','Girls library','Biology lab','Two Wheeler'),
(7,'DY Patil College','Physics','Girls library','Zoology lab','Two Wheeler'),
(8,'Christ College','Biology','Girls library','Physics lab','Two Wheeler');

------------------NATURAL JOIN-------------------------
SELECT * FROM INSTITUTE NATURAL JOIN College;

----------------------CROSS JOIN------------------------
SELECT * FROM INSTITUTE CROSS JOIN College;

SELECT Stud_name,
	   Stud_Country
FROM  INSTITUTE
CROSS JOIN  College;  

SELECT CONCAT_WS('_',Stud_name,College_name)
AS COMBINE
FROM INSTITUTE CROSS JOIN
College;

