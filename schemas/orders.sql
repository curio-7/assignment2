CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    -- status VARCHAR(50), DEPEND ON THE BOOKING STATUS CAN BE IMPLEMENTED LATER ON 
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
