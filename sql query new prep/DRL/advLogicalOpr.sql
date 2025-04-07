-- 1. Not from Pune or Bhopal
SELECT * FROM students WHERE city NOT IN ('Pune', 'Bhopal');

-- 2. Age between 13 and 15
SELECT * FROM students WHERE age BETWEEN 13 AND 15;

-- 3. First name starts with 'S'
SELECT * FROM students WHERE first_name LIKE 'S%';

-- 4. City ends with 'bad'
SELECT * FROM students WHERE city LIKE '%bad';

-- 5.Get students who are from 'Delhi', 'Mumbai', or 'Kolkata', but age is not 16.
SELECT * FROM students 
WHERE age != 16 AND city IN ('Delhi', 'Kolkata', 'Mumbai');
