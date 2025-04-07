-- List top 3 youngest students from Delhi.
    SELECT * FROM Students WHERE city = 'Delhi' ORDER BY age LIMIT 3;

-- Find the oldest student in grade '10A'.
    SELECT * FROM students WHERE grade = '10A' ORDER BY age DESC LIMIT 1;

-- Get students sorted by last name (A–Z).
    SELECT * FROM students ORDER BY first_name;

-- List students from Kolkata, sorted by age (descending).
    SELECT * FROM students WHERE city = 'Kolkata' ORDER BY age DESC;