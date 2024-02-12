--Q1 : Retrieve a list of top-selling books

SELECT a.name,b.title, SUM(oi.quantity) AS total_quantity_sold
FROM books b
JOIN order_items oi ON b.book_id = oi.book_id
JOIN authorsBooks ab ON b.book_id = ab.book_id
JOIN authors a ON ab.author_id = a.author_id
GROUP BY b.book_id, a.nam
ORDER BY total_quantity_sold DESC;
--also can inlcude how much books we want to show by using limit