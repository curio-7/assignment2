
# Bookstore Management System

## Tables and Attributes

### Authors
- author_id: INT, Primary Key
- author_name: VARCHAR(100), Not Null, Unique

### Books
- book_id: INT, Primary Key
- title: VARCHAR(255), Not Null
- price: DECIMAL(10,3), Not Null
- stock_available: INT, Not Null
- published_date: DATE, Not Null

### Customers
- customer_id: INT, Primary Key
- customer_name: VARCHAR(100), Not Null
- email: VARCHAR(255), Not Null, Unique
- phone_number: VARCHAR(15)
- registration_date: DATETIME, Default CURRENT_TIMESTAMP

### Orders
- order_id: INT, Primary Key
- customer_id: INT, Foreign Key references `customers(customer_id)`
- order_date: DATETIME, Default CURRENT_TIMESTAMP

### OrderItems
- order_id: INT, Foreign Key references `orders(order_id)`
- book_id: INT, Foreign Key references `books(book_id)`
- quantity: INT, Not Null
- price: DECIMAL(10,3), Not Null
- Composite Primary Key (`order_id`, `book_id`)

### Authors_Books
- author_id: INT, Foreign Key references `authors(author_id)`
- book_id: INT, Foreign Key references `books(book_id)`
- Composite Primary Key (`author_id`, `book_id`)

## Relationships

- Authors to Books: Many-to-Many (resolved through authorsBooks table)
- Books to Orders: Many-to-Many (resolved through orderItems table)
- Customers to Orders: One-to-Many

## SQL Queries

1. Retrieve a list of top-selling books, including author names, book names and total quantity sold.
2. Calculate total sales revenue for a given period.
