CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    price DECIMAL(10,3) NOT NULL,
    stocks_available INT,
    published_date DATE NOT NULL
);
