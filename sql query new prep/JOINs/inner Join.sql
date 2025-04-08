-- Table: Employees
-- emp_id	emp_name	dept_id
-- 1	    John	       101
-- 2	    Sarah	       102
-- 3	    Mike	       103
-- 4	    Rachel	       NULL

-- Table: Departments
--     dept_id	   dept_name
--     101	          HR
--     102            IT
--     104	       Marketing



-- Write a query to show employee names and their department names using INNER JOIN.
    SELECT e.emp_name , d.dept_name
    FROM employees AS e
    INNER JOIN Department as d
    ON e.dept_id = d.dept_id;

-- What will be the result of the INNER JOIN? (Predict before executing)
    emp_name   dept_name
    john         HR
    Sarah        IT

-- Now, add a WHERE clause to only show employees from the IT department.
    SELECT e.emp_name , d.dept_name
    FROM employees AS e
    INNER JOIN Department as d
    ON e.dept_id = d.dept_id
    WHERE dept_name = 'IT';