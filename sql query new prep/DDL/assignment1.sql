-- Create Customers table
USE temp;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at DATE
);

-- Create Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL CHECK(price > 0),  -- row level constraint
    stock_quantity INT DEFAULT 0
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    status VARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    UNIQUE (customer_id, order_id)
);

-- Create OrderItems table
CREATE TABLE OrderItems (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    UNIQUE (product_id , order_id)
);


-- applying a index on order_date in order table
CREATE INDEX order_date ON orders(order_date);

-- adding constrains on orderIterm table  (table level constraint )
-- ALTER TABLE orderItems 
-- ADD CONSTRAINT unique_id
-- UNIQUE (product_id , order_id);


-- ALTER TABLE AND DROP
-- adding a new column phone to a Customers table
ALTER TABLE Customers ADD phone VARCHAR(12) DEFAULT NULL;

-- rename column name 
ALTER TABLE Orders RENAME COLUMN status TO order_status;

-- droping stock_quantity from Product table
ALTER TABLE Products DROP COLUMN stock_quantity;

DROP TABLE OrderItems;






