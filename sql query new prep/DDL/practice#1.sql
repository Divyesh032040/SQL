
-- intermediate query
-- PRINT EMPLOYEES TABLE
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



-- HARD LEVEL QUERIES

-- 🔴 Show the total number of employees in each department.
    SELECT department , COUNT(*) AS total_emp FROM employees GROUP_BY department;

-- 🔴 Show the average salary by department.
    SELECT SALARY , AVG(SALARY) AS AVG_SALARY FROM EMPLOYEES GROUP BY SALARY;

-- 🔴 Show the highest paid employee in the company.
    SELECT * from employees order by salary desc limit 1;

-- 🔴 Show the 2nd highest salary employee.
    SELECT * FROM EMPLOYEES ORDER BY SALARY DESC LIMIT 1 OFFSET 1;

-- 🔴 Show employees sorted by hire date (most recent first).
    SELECT * FROM EMPLOYEES ORDER BY HIRED_ON DESC;

-- 🔴 Show employees whose commission is greater than 10% of their salary.
    SELECT * FROM EMPLOYEES WHERE COMMISSION > 0.1 * SALARY;

