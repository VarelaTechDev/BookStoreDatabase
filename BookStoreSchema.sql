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
('Book 15', 2035, 5);

UPDATE books
SET bookName = 'New Book Name', bookPubYear = 2035
WHERE bookId = 1;



SELECT * FROM books
INNER JOIN author 
HAVING books.bookAuthorId = author.authorId;



