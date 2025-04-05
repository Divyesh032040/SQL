

SELECT * FROM employees;

-- Show all 'Managers' working in the 'HR' department.
SELECT * FROM employees WHERE DEPARTMENT = 'HR' AND DESIGNATION = 'MANAGER';    


-- Show employees who earn salary between 40,000 and 60,000.
SELECT * FROM employees WHERE SALARY BETWEEN 40000 AND 60000;

--  Show employees whose names start with 'A'.
SELECT * FROM EMPLOYEES WHERE NAME LIKE 'A%';

--  Show employees who do not have a manager (i.e., manager is NULL).
SELECT * FROM EMPLOYEES WHERE MANAGER IS NULL;

-- List all unique designations.
SELECT DISTINCT designation FROM employees;

