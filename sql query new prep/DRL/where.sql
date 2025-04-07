-- syntax : SELECT * FROM table_name WHERE condition

--  Get all male students:
SELECT * FROM Students WHERE gender = 'male';

-- Get students older than 15:
SELECT * FROM Students WHERE AGE > 15;

-- REMEMBER : WHILE SEARCHING FOR DISTINCT , WE DON'T HAVE TO USE A WHERE and SELECT and DISTINCT come together
SELECT DISTINCT age FROM Students;

-- using a logical operator like AND , OR , NOT 

-- 🔗 AND – All conditions must be true

--Get male students older than 15 , here is 2 condition male and age>15 and both should true so use AND
SELECT * FROM students WHERE age > 15 AND gender = 'male';

-- 🔀 OR – At least one condition must be true

-- Get students who are either from 'Goa' or 'Delhi'
SELECT * FROM students WHERE city = 'Goa' OR city = 'Delhi';


-- 🚫 NOT – Negates a condition
-- Example: Get students who are not from 'Delhi'
SELECT * FROM students WHERE city != 'Delhi';
SELECT * FROM students WHERE NOT city = 'Delhi';
-- SELECT * FROM students WHERE city IS NOT 'Delhi'; this is wrong , IS NOT only use with NULL "IS NOT NULL"



-- 🧠 Combination of All
-- Example: Get female students who are not from 'Mumbai' and age is less than 16
SELECT * FROM students WHERE gender = 'female' AND age < 16 AND city != 'Mumbai';
SELECT * FROM students WHERE gender = 'female' AND age < 16 AND NOT city = 'Mumbai';

-- 💡 Tip: Use Parentheses for clarity
-- Sometimes, logical conditions can get confusing. Use parentheses () to group conditions.
SELECT * FROM students 
WHERE age > 15 AND (city = 'Delhi' OR city = 'Goa');



