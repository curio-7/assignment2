CREATE TABLE order_items (
    order_id INT,
    book_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10,3) NOT NULL,
    PRIMARY KEY (order_id, book_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);
