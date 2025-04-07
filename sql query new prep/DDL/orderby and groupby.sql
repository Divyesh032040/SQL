-- 🔁 5 Challenges on ORDER BY

-- 1️⃣ Show all employees ordered by salary in descending order (highest salary first).
    SELECT * FROM EMPLOYEES ORDER BY SALARY DESC;

-- 2️⃣ Show all employees ordered by hire date, from newest to oldest.
    SELECT * FROM EMPLOYEES ORDER BY HIRED_ON DESC;

-- 3️⃣ Show employees ordered by department alphabetically, then by salary high to low within each department.
    SELECT * FROM EMPLOYEES ORDER BY department , salary DESC;

-- 4️⃣ Show employees ordered by commission (lowest first), and if commission is same, then name alphabetically.
    SELECT * FROM employees
    ORDER BY commission ASC, name ASC;


-- 5️⃣ Show all employees, most recently hired at the top, and only show their name and hire date.
    SELECT  name , hired_on FROM EMPLOYEES ORDER BY HIRED_ON DESC 



-- 📊 5 Challenges on GROUP BY

-- 6️⃣ Show total number of employees in each department.
    select department , COUNT(*) 
    FROM employees as total_emp 
    GROUP BY department;


-- 7️⃣ Show average salary for each designation (like Manager, Developer, etc.).
    SELECT designation , AVG (SALARY)
    FROM employees as AVG_SALARY
    GROUP BY DESIGNATION;

-- 8️⃣ Show the highest salary in each department.
    SELECT department , MAX(SALARY)
    FROM EMPLOYEES AS HIGHEST SALARY
    GROUP BY DEPARTMENT;

-- 9️⃣ Show total salary paid per department (i.e., sum of salary per dept).

-- 🔟 Show how many employees have the same manager (group by manager).