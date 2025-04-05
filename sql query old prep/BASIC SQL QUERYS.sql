USE ORG;
-- SELECT QUERY
SELECT FIRST_NAME , SALARY FROM WORKER;

-- SELECT WITHOUT FROM
SELECT 11+22;
SELECT now();
SELECT lcase("DIVYESH");
SELECT UCASE("divyesh");

-- WHERE QUERY - Apply consition reduce rows
SELECT * FROM WORKER;
SELECT * FROM WORKER WHERE SALARY > 50000;
SELECT SALARY , DEPARTMENT FROM Worker WHERE SALARY between 50000 and 65000;
SELECT * FROM WORKER WHERE DEPARTMENT = 'HR';
select * from worker where department in ('hr','it');

-- BETWEEN
SELECT * FROM WORKER WHERE SALARY BETWEEN 60000 AND 70000;

-- OR 
SELECT * FROM WORKER WHERE DEPARTMENT = 'HR' OR DEPARTMENT = 'IT';

-- REDUCE or BY USING IN 
SELECT * FROM WORKER WHERE DEPARTMENT IN  ('HR','IT');

SELECT SALARY FROM WORKER WHERE FIRST_NAME = 'CHRIS'; 
select * from worker where salary = 60000;

-- NOT 
select * FROM WORKER WHERE DEPARTMENT NOT IN ('HR','SALES'); 

select * 
from worker
where not salary = 60000 ;

-- NULL VALUE SELECT
SELECT * FROM WORKER WHERE SALARY IS NULL;

-- PATTERN SEARCHING OR WILDCARD
SELECT * FROM WORKER WHERE FIRST_NAME LIKE '%MI%';
SELECT salary , first_name FROM worker WHERE FIRST_NAME LIKE 'c%';

-- sorting using ORDERE BY 
SELECT * FROM WORKER ORDER BY SALARY;    -- SORT SALARY 

SELECT * FROM WORKER ORDER BY FIRST_NAME ;

-- GET A DISTINCT VALUES 
SELECT distinct DEPARTMENT FROM WORKER;

select department , AVG(salary) from worker group by department;

use org;
select * from worker;

select * from worker where salary between 55000 and 60000;

select * from worker where salary in (50000,60000,55000);
select * from worker where first_name is null;

select * from worker where salary is null; 

select first_name from worker where salary in (60000,50000);

select *
from worker 
where department = 'it' or salary > 60000;


-- sorting order by 
select * 
from worker 
order by worker_id;

select * 
from worker 
order by worker_id desc;

-- grouping data using group by in another file










