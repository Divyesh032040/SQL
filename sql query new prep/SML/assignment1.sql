-- Step 1: Create the Students table (if not already created)
CREATE TABLE IF NOT EXISTS Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT,
    marks INT,
    status BOOLEAN DEFAULT FALSE
);

-- Step 2: Insert 3 initial student records
INSERT INTO Students (student_id, name, email, age, marks) VALUES
(1, 'Divyesh', 'dp032040@gmail.com', 23, 45),
(2, 'Dev', 'dp0dfu2040@gmail.com', 13, 80),
(3, 'Divya', 'dp0s2040@gmail.com', 22, 30);

-- Step 3: Update the email of the student with ID 2
UPDATE Students 
SET email = 'dpskbc@gmail.com' 
WHERE student_id = 2;

-- Step 4: Delete students whose marks are below 35
DELETE FROM Students 
WHERE marks < 35;

-- Step 5: Use REPLACE to update or insert students
REPLACE INTO Students (student_id, name, email, age, marks) VALUES
(3, 'Devraj', 'devraj@gmail.com', 44, 75),
(4, 'Aman', 'aman@gmail.com', 32, 66);

-- Step 6: Simulate soft delete using the status column
-- (Already added status column in CREATE TABLE)

-- Soft delete: mark student with ID 4 as deleted (status = TRUE)
UPDATE Students 
SET status = TRUE 
WHERE student_id = 4;

-- Step 7: Retrieve only soft-deleted students
SELECT * FROM Students 
WHERE status = TRUE;
