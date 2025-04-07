-- Using the Students table, write SQL to:

-- Step 1: Create the database and students table
CREATE DATABASE temp2;
USE temp2;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    grade VARCHAR(5),
    city VARCHAR(50)
);

-- Step 2: Insert 15 sample student records
INSERT INTO students (student_id, first_name, last_name, gender, age, grade, city) VALUES
(1, 'Aarav', 'Sharma', 'Male', 16, '10A', 'Delhi'),
(2, 'Isha', 'Verma', 'Female', 15, '9B', 'Mumbai'),
(3, 'Rahul', 'Patel', 'Male', 17, '11C', 'Ahmedabad'),
(4, 'Sneha', 'Mishra', 'Female', 14, '8A', 'Lucknow'),
(5, 'Karan', 'Mehta', 'Male', 15, '9A', 'Pune'),
(6, 'Pooja', 'Yadav', 'Female', 16, '10B', 'Jaipur'),
(7, 'Rohit', 'Singh', 'Male', 17, '11A', 'Bhopal'),
(8, 'Anjali', 'Rao', 'Female', 13, '7C', 'Chennai'),
(9, 'Siddharth', 'Desai', 'Male', 15, '9C', 'Bangalore'),
(10, 'Meera', 'Kapoor', 'Female', 14, '8B', 'Hyderabad'),
(11, 'Tanish', 'Jain', 'Male', 16, '10C', 'Kolkata'),
(12, 'Diya', 'Naik', 'Female', 17, '11B', 'Goa'),
(13, 'Nikhil', 'Dube', 'Male', 15, '9B', 'Indore'),
(14, 'Riya', 'Sen', 'Female', 14, '8C', 'Guwahati'),
(15, 'Varun', 'Chopra', 'Male', 13, '7A', 'Chandigarh');


-- Get all unique age values in the table
SELECT DISTINCT age FROM students;

-- Update student with ID = 12 to have first name 'Dev'
UPDATE students 
SET first_name = 'Dev', last_name = 'Kumar'
WHERE student_id = 12;

-- Get all details of students whose first name is 'Dev'
SELECT * FROM students WHERE first_name = 'Dev';
