-- JOINS 

-- INNER JOINS

CREATE DATABASE innerJoin;

USE innerJoin ;

CREATE TABLE customers (
id INT PRIMARY KEY ,
name VARCHAR(255) ,
address VARCHAR(255)
);

INSERT INTO customers ( id , name , address)
VALUES  (1, 'John Doe', '123 Main St'),
		(2, 'Jane Smith', '456 Oak St'),
		(3, 'Alice Johnson', '789 Pine St');
        
CREATE TABLE orders (
cust_id INT ,
quantity int ,
foreign key (cust_id) REFERENCES customers(id) ON DELETE CASCADE
);

INSERT INTO orders ( cust_id , quantity)
VALUES  (1, 10),
        (1, 5),
		(2, 20),
		(3, 15),
		(3, 25);

INSERT INTO customers (id , name , address) values (15 , "rajshree" , "ram nagar ");
        
SELECT * FROM customers ;
SELECT * FROM orders ;

-- 	INNER JOIN OPERATION 
SELECT c.name , c.address , o.quantity 
FROM customers as c
INNER JOIN orders as o
ON c.id = o.cust_id ;

-- left join 
SELECT c.name , c.address , o.quantity 
FROM customers as c 
LEFT JOIN orders as o 
ON c.id = o.cust_id;

-- right join 
SELECT c.name , c.address , o.quantity
FROM customers as c 
RIGHT JOIN orders as o 
ON c.id = o.cust_id;


-- FULL JOIN 

SELECT customers.name , customers.address , orders.quantity
FROM customers 
left join orders 
ON customers.id = orders.cust_id
union
SELECT customers.name , customers.address , orders.quantity
FROM customers 
right join orders 
ON customers.id = orders.cust_id;


-- cross join

SELECT customers.name, customers.address , customers.id
from customers
cross join orders;






