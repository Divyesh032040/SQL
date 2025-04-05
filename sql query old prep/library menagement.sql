CREATE DATABASE LibraryManagement;

USE LibraryManagement;

CREATE TABLE Books (
  BookID INT PRIMARY KEY AUTO_INCREMENT,
  Title VARCHAR(255) NOT NULL,
  Author VARCHAR(255) NOT NULL,
  ISBN VARCHAR(13) UNIQUE NOT NULL,
  PublishedYear INT
);

CREATE TABLE Members (
  MemberID INT PRIMARY KEY AUTO_INCREMENT,
  FullName VARCHAR(255) NOT NULL,
  Email VARCHAR(255) UNIQUE NOT NULL,
  Phone VARCHAR(15),
  MembershipDate DATE NOT NULL
);

CREATE TABLE BorrowRecords (
  BorrowID INT PRIMARY KEY AUTO_INCREMENT,
  MemberID INT,
  BookID INT,
  BorrowDate DATE NOT NULL,
  ReturnDate DATE,
  FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
  FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO Books (Title, Author, ISBN, PublishedYear) VALUES
('The Catcher in the Rye', 'J.D. Salinger', '9780316769488', 1951),
('To Kill a Mockingbird', 'Harper Lee', '9780061120084', 1960),
('1984', 'George Orwell', '9780451524935', 1949);


INSERT INTO Members (FullName, Email, Phone, MembershipDate) VALUES
('Alice Johnson', 'alice.johnson@example.com', '555-1234', '2023-01-15'),
('Bob Smith', 'bob.smith@example.com', '555-5678', '2023-02-10'),
('Charlie Brown', 'charlie.brown@example.com', '555-9101', '2023-03-05');


INSERT INTO BorrowRecords (MemberID, BookID, BorrowDate, ReturnDate) VALUES
(1, 1, '2023-08-10', '2023-08-20'), -- Alice borrowed 'The Catcher in the Rye' and returned it
(2, 2, '2023-08-12', NULL), -- Bob borrowed 'To Kill a Mockingbird' and hasn't returned it yet
(3, 3, '2023-08-14', '2023-08-22'); -- Charlie borrowed '1984' and returned it

SELECT * FROM Members;

-- order by
SELECT FullName, MembershipDate
FROM Members
ORDER BY MembershipDate ;  -- Sort members by MembershipDate in ascending order

-- group by 
SELECT Fullname , MembershipDate , Email
FROM Members
GROUP BY Email



