# Bookstore Database Design and SQL Queries

## Task 1: Database Design

**Scenario:** We are building a system for a bookstore that needs to manage books, authors, and customers.

### 1.1 Database Design

Design a relational database that includes the following tables:

#### Books
- ID: Unique identifier for the book
- Title: Title of the book
- Publication Year: Year the book was published
- Author ID: Foreign key referencing the author who wrote the book

#### Authors
- ID: Unique identifier for the author
- Name: Name of the author

#### Customers
- ID: Unique identifier for the customer
- Name: Name of the customer
- Email: Email address of the customer

### 1.2 SQL Queries

Write SQL queries to perform the following operations:

1. Insert new authors and books into the database.
2. Find all books written by a particular author.
3. Find the author who wrote the most books.
4. Update the email of a customer.

