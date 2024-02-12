--Q2: Calculate total sales revenue for a given period.

SELECT SUM(oi.quantity * oi.price) AS total_sales
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_date BETWEEN '2023-12-01' AND '2024-02-12'; -- let say from 1 dec to 12 feb .
