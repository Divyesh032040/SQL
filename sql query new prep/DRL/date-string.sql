


-- Show full names (in uppercase) of students whose city name has more than 6 letters.
    SELECT UPPER(full_name) FROM student WHERE LENGTH(city) > 6;

-- Find students admitted in the last 30 days.
    SELECT * FROM students WHERE DATEDIFF(CURDATE() , admission_date) > 30;

-- List students whose name starts with ‘A’, and show first 3 letters of their last name.
    SELECT first_name, SUBSTRING(last_name, 1, 3) AS last_name_prefix
    FROM students
    WHERE first_name LIKE 'A%';


-- Show total characters in full name (first + last).
    SELECT LENGTH(CONCAT(first_name+' '+last_name)) FROM students;

-- Count how many students are missing their grade.
    SELECT * FROM STUDENTS WHERE grade IS NULL;