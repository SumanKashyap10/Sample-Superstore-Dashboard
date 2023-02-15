CREATE DATABASE BOOKS;
USE BOOKS;


CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);
INSERT INTO Persons
(ID,LastName,FirstName,Age)
values
(1,'KASHYAP','SUMAN','25');

INSERT INTO Persons
(ID,LastName,FirstName,Age,Departments,JOBROLE,DateofJoining)
values
(2,'SHARMA','AHANA','25','PWD','JE','2023/01/01');
SELECT * FROM Persons;
UPDATE Persons
SET Departments = 'PWD'
WHERE ID=1


ALTER TABLE
Persons
ADD 
DateofJoining DATE;

