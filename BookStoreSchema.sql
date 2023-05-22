DROP DATABASE IF EXISTS `bookstore`; CREATE DATABASE `bookstore`;

USE `bookstore`;

CREATE TABLE customer(
	customerId BIGINT AUTO_INCREMENT,
    customerName VARCHAR(255),
    customerEmail VARCHAR(255),
    PRIMARY KEY(customerId)
);

CREATE TABLE author(
	authorId BIGINT AUTO_INCREMENT,
	authorName VARCHAR(255),
    PRIMARY KEY(authorId)
);

CREATE TABLE books(
	bookId BIGINT AUTO_INCREMENT,
    bookName VARCHAR(255),
	bookPubYear INT,
    bookAuthorId BIGINT,
    FOREIGN KEY (bookAuthorId) REFERENCES author(authorId),
    PRIMARY KEY(bookId)
);

INSERT INTO customer (customerName, customerEmail) VALUES
('Elizabeth Turner', 'elizabeth@example.com'),
('Benjamin Harris', 'benjamin@example.com'),
('Sophia Parker', 'sophia@example.com'),
('Samuel Mitchell', 'samuel@example.com'),
('Emma Thompson', 'emma@example.com'),
('Nathan Brooks', 'nathan@example.com'),
('Olivia Reed', 'olivia@example.com'),
('Daniel Hughes', 'daniel@example.com'),
('Isabella Coleman', 'isabella@example.com'),
('Matthew Foster', 'matthew@example.com');




-- Insert data int othe author table
INSERT INTO author (authorName) VALUES
('Elizabeth Turner'),
('Benjamin Harris'),
('Sophia Parker'),
('Samuel Mitchell'),
('Emma Thompson'),
('Nathan Brooks'),
('Olivia Reed'),
('Daniel Hughes'),
('Isabella Coleman'),
('Matthew Foster');

INSERT INTO books (bookName, bookPubYear) VALUES
('Book 1', 2021),
('Book 2', 2022),
('Book 3', 2023),
('Book 4', 2024),
('Book 5', 2025),
('Book 6', 2026),
('Book 7', 2027),
('Book 8', 2028),
('Book 9', 2029),
('Book 10', 2030);


INSERT INTO books (bookName, bookPubYear, bookAuthorId) VALUES
('Book 11', 2031, 1),
('Book 12', 2032, 2),
('Book 13', 2033, 3),
('Book 14', 2034, 4),
('Book 15', 2035, 5),
('Book 16', 2035, 3);

UPDATE books
SET bookName = 'New Book Name', bookPubYear = 2035
WHERE bookId = 1;



-- SELECT * FROM books
-- INNER JOIN author 
-- ON books.bookAuthorId = author.authorId;




-- Write SQL queries to perform the following operations:



-- 1. Insert new authors and books into the database.
INSERT INTO books(bookName, bookPubYear) VALUES
('Book One', 1990),
('Book Two', 1238),
('Book Three', 4233),
('Book Four', 3434);



SELECT * FROM books
LEFT JOIN author 
ON books.bookAuthorId = author.authorId;

-- We would need to join to allow us to use an author name
-- 2. Find all books written by a particular author.
SELECT * FROM books
INNER JOIN author
ON books.bookAuthorId = author.authorId
WHERE author.authorName = 'Sophia Parker';


-- SELECT COUNT(bookName) FROM books
-- INNER JOIN author
-- ON books.bookAuthorId = author.authorId
-- WHERE author.authorName = 'Sophia Parker';

-- This gives us 6
SELECT COUNT(bookName) FROM books
INNER JOIN author
ON books.bookAuthorId = author.authorId;

-- 3. Find the author who wrote the most books.
SELECT authorName, COUNT(bookName) AS bookCount FROM author
LEFT JOIN books ON author.authorId = books.bookAuthorId
GROUP BY authorId
ORDER BY bookCount DESC
LIMIT 1;


-- 4. Update the email of a customer.
SELECT * FROM customer;

-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
SET SQL_SAFE_UPDATES=0;


UPDATE customer
SET customerEmail = 'e@example.com'
WHERE customerEmail = 'olivia@example.com';


SELECT * FROM customer;



