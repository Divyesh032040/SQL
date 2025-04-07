CREATE DATABASE temp;

USE temp;

CREATE TABLE student (
id INT PRIMARY KEY NOT NULL,
first_name VARCHAR(255) ,
age INT
);

INSERT INTO student (id , first_name , age) VALUES 
(1 , "DIVYESH" , 23),
(2 , "DEV" , 34);

SELECT * FROM student;