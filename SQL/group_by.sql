use org;

select * from worker;

-- group by

select department , count(DEPARTMENT) from worker group by department;

-- find avg salary per department 
select department , avg(salary) from worker group by department;
-- her for each group of department , engine count avg salary for each row of specific group of department. 

-- group worker by salary
select department , sum(salary) from worker group by department;

-- per department 
select department , MIN(salary) from worker group by department;

-- group by with havinvg keyword

select department , sum(salary) from worker group by department having sum(salary) > 55000;

select department , count(department) from worker group by department having count(department) > 1;

