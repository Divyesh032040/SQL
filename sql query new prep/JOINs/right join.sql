Tables:                               
👥 Employees:
emp_id	name	dept_id
1	    John	101
2	   Sarah	102
3	    Mike	NULL

🏢 Departments:
dept_id	dept_name
101	      HR
102	      IT
103	      Sales
104	     Marketing


-- 🔧 Tasks:
-- Write a RIGHT JOIN query to show all departments and their employees.
    SELECT d.dept_name , e.name 
    FROM Employees AS e
    RIGHT JOIN Department AS d
    ON e.dept_id = d.dept_id;

-- Show only the departments that have no employees assigned.
SELECT d.dept_name , e.name 
FROM Employees AS e
RIGHT JOIN Department AS d
ON e.dept_id = d.dept_id
WHERE e.name IS NULL;

-- Sort the result alphabetically by department name.
SELECT d.dept_name , e.name 
FROM Employees AS e
RIGHT JOIN Department AS d
ON e.dept_id = d.dept_id
ORDER BY d.dept_name;

