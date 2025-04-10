CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

CREATE TABLE Worker(
WORKER_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT ,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(25),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);
USE ORG;
SELECT * FROM WORKER;

INSERT INTO Worker (FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
('John', 'Doe', 50000, '2023-01-15 09:00:00', 'HR'),
('Jane', 'Smith', 60000, '2023-03-22 10:30:00', 'Finance'),
('Michael', 'Johnson', 55000, '2023-05-10 11:45:00', 'IT'),
('Emily', 'Davis', 58000, '2023-06-18 08:00:00', 'Marketing'),
('Chris', 'Brown', 52000, '2023-07-01 09:15:00', 'Sales'),
('Amanda', 'Williams', 62000, '2023-08-25 10:00:00', 'Operations'),
('Daniel', 'Jones', NULL, '2023-09-10 12:00:00', 'Logistics');

SELECT * FROM Worker;

CREATE TABLE Bonus (
WORKER_REF_ID INT,
BONUS_AMOUNT INT(25),
BONUS_DATE DATETIME,
FOREIGN KEY (WORKER_REF_ID)
  REFERENCES Worker(WORKER_ID)
  ON DELETE CASCADE
);


INSERT INTO Bonus (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
(1, 5000, '2023-02-15 09:00:00'),
(2, 6000, '2023-04-22 10:30:00'),
(3, 5500, '2023-06-10 11:45:00'),
(4, 5800, '2023-07-18 08:00:00'),
(5, 5200, '2023-08-01 09:15:00'),
(6, 6200, '2023-09-25 10:00:00');

SELECT * FROM Bonus;

CREATE TABLE Title (
WORKER_REF_ID INT,
WORKER_TITLE CHAR(25),
AFFECTED_FROM DATETIME,
    FOREIGN KEY (WORKER_REF_ID)
    REFERENCES Worker(WORKER_ID)
    ON DELETE CASCADE
);

INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(1, 'Manager', '2023-01-15 09:00:00'),
(2, 'Accountant', '2023-03-22 10:30:00'),
(3, 'Developer', '2023-05-10 11:45:00'),
(4, 'Marketing Specialist', '2023-06-18 08:00:00'),
(5, 'Sales Executive', '2023-07-01 09:15:00'),
(6, 'Operations Manager', '2023-08-25 10:00:00'),
(7, 'Logistics Coordinator', '2023-09-10 12:00:00');

SELECT * FROM Title;










