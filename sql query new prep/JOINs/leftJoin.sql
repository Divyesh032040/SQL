🔧 Table: Customers
customer_id	name
1	Alice
2	Bob
3	Charlie
4	David

🔧 Table: Orders
order_id	customer_id	product_name
101	1	Phone
102	1	Laptop
103	2	Mouse
104	5	Monitor


-- 🧠 Tasks:
-- Write a LEFT JOIN query to list all customers and their orders.
    SELECT c.name , o.product_name
    FROM Customers c
    LEFT JOIN Orders o 
    ON c.customer_id = o.customer_id;


-- Modify the query to show customers who have not placed any orders.
    SELECT c.name , o.product_name
    FROM Customers c
    LEFT JOIN Orders o 
    ON c.customer_id = o.customer_id;
    WHERE o.order_id IS NULL;


-- Add ORDER BY to sort the result by customer name.
    SELECT c.name , o.product_name
    FROM Customers c
    LEFT JOIN Orders o 
    ON c.customer_id = o.customer_id;
    ORDER BY c.name;



