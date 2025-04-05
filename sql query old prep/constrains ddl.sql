-- Use the 'org' database
USE org;

-- Create the 'customer' table
CREATE TABLE customer (
    id INTEGER PRIMARY KEY,
    cname VARCHAR(225),
    address VARCHAR(255),
    gender CHAR(2),
    city VARCHAR(225),
    pincode INTEGER
);

-- ALTER TABLE COMMANDS

-- Insert data into the 'customer' table
INSERT INTO customer (id, cname, address, gender, city, pincode) VALUES
(1, 'John Doe', '123 Maple Street', 'M', 'New York', 10001),
(2, 'Jane Smith', '456 Oak Avenue', 'F', 'Los Angeles', 90001),
(3, 'Alice Johnson', '789 Pine Road', 'F', 'Chicago', 60601),
(4, 'Bob Brown', '101 Birch Lane', 'M', 'Houston', 77001),
(5, 'Emma Wilson', '202 Cedar Drive', 'F', 'Phoenix', 85001);



-- ADD       NEW COLUMN
ALTER TABLE customer ADD is_prime VARCHAR(225) NOT NULL DEFAULT 'NOT PRIME';

-- MODIFY         TABLE COLUMN 
ALTER TABLE customer MODIFY is_prime CHAR(225) NOT NULL DEFAULT "NOT PRIME";

-- CHANGE COLUMN       NAME
ALTER TABLE customer CHANGE COLUMN is_prime subscription varchar(225) DEFAULT "NOT SUBSCRIBED";

-- DROP COLUMN 
ALTER TABLE customer DROP COLUMN subscription;

-- RENAME       the table name  
ALTER TABLE customerDetails RENAME TO customer;


-- DML (DATA MODIFICATION LANGIUAGE)

-- 	INSERT
INSERT INTO customer (id, cname, address, gender, city, pincode )
values (6,"ram","shree nagar" ,"m" , "rajkot" , 210342  );

INSERT INTO customer (id , cname)
values (7 , "aman");

-- UPDATE antry of aman 

UPDATE customer SET address = "street 3 , rajkot" , gender = "m" , city = "rajkot" , pincode = 432421 where id = 7;

-- Disable safe updates for the current session
SET SQL_SAFE_UPDATES = 0;

UPDATE customer SET pincode = 360550 ;

-- increse pincode by 1 
UPDATE customer SET pincode = pincode + 1 ;

-- DELETE COMMAND
DELETE FROM customer WHERE id = 7;
delete from customer WHERE id IN (3,4);
select * from customer;






