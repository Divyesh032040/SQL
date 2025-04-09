
-- suppose we have a 2 tables , department1 and department2 

-- get all department from table 1 and table 2 
SELECT * FROM department1 
UNION 
SELECT * FROM department2;

-- LIST OUT ALL EMPLOYEES FROM ALL DEPARTMENT WHO WORK AS SALESMAN
SELECT * FROM department1 WHERE role = 'Salesman'
UNION
SELECT * FROM department2 WHERE role = 'Salesman'

-- SO BASICALLY BY USING UNION , IF ANY EMPLOYEE WHO WORKING IN BOTH DEPARTMENT, STILL IT only come one time in result. DISTINCT VALUES 

